# Type-checks every example package, or runs them all with -Run.
#
# There is no CI in this repository, so this is what stands in for it: the
# compiler is pre-1.0 and a rebuild can invalidate an example that passed
# yesterday, which is only noticed by checking all of them.
#
#   ./Check.ps1                 type-check every package
#   ./Check.ps1 -Run            type-check, then run the ones that need no input
#   ./Check.ps1 -Filter Errors  only packages whose path contains "Errors"
#
# A package is any directory holding a Rux.toml, at any depth. A package nested
# inside another package is a companion of that lesson and is checked by it,
# not on its own. With -Run, a static or shared library is built rather than run.

param(
    [switch]$Run,
    [string]$Filter = ''
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot

# Packages that read standard input, so running them unattended would block.
$needsInput = @('Circle', 'Guess', 'Quadratic', 'Launch', 'Input')

# Packages that make sound, so running them unattended is a nuisance.
$audible = @('Melody')

# Packages whose run exits nonzero on purpose, with the status they are expected to return.
$expectedStatus = @{ 'FallibleMain' = 1 }

function Test-Companion([System.IO.DirectoryInfo]$directory) {
    $parent = $directory.Parent
    while ($parent -and $parent.FullName.Length -gt $root.Length) {
        if (Test-Path (Join-Path $parent.FullName 'Rux.toml')) { return $true }
        $parent = $parent.Parent
    }
    return $false
}

$roots = Get-ChildItem -Path $root -Filter 'Rux.toml' -Recurse -File |
    Where-Object { $_.FullName -notmatch '[\\/](Bin|Temp|\.git)[\\/]' } |
    ForEach-Object { $_.Directory } |
    Where-Object { -not (Test-Companion $_) } |
    Where-Object { $_.FullName.Substring($root.Length + 1) -like "*$Filter*" } |
    Sort-Object FullName

# A workspace root has nothing to build itself, so its members are checked from their own
# directories instead.
$packages = foreach ($directory in $roots) {
    $manifest = Get-Content (Join-Path $directory.FullName 'Rux.toml') -Raw
    if ($manifest -match '(?m)^\[Workspace\]' -and $manifest -match '(?ms)^Packages\s*=\s*\[(.*?)\]') {
        [regex]::Matches($Matches[1], '"([^"]+)"') |
            ForEach-Object { Get-Item (Join-Path $directory.FullName $_.Groups[1].Value) }
    } else {
        $directory
    }
}
$failed = @()
foreach ($package in $packages) {
    $name = $package.Name
    $label = $package.FullName.Substring($root.Length + 1) -replace '\\', '/'
    Push-Location $package.FullName
    try {
        $output = & rux check 2>&1 | Out-String
        if ($LASTEXITCODE -eq 0) {
            Write-Host ("{0,-32} check" -f $label) -NoNewline
            $type = if ((Get-Content 'Rux.toml' -Raw) -match '(?m)^Type\s*=\s*"(\w+)"') { $Matches[1] } else { 'Executable' }
            if ($Run -and $type -eq 'SourceLibrary') {
                Write-Host "  (source library: nothing to run)" -ForegroundColor DarkGray
            } elseif ($Run -and $type -ne 'Executable') {
                $null = & rux build 2>&1 | Out-String
                if ($LASTEXITCODE -eq 0) {
                    Write-Host "  build" -ForegroundColor Green
                } else {
                    Write-Host "  build FAILED" -ForegroundColor Red
                    $failed += $label
                }
            } elseif ($Run -and $needsInput -notcontains $name -and $audible -notcontains $name) {
                $null = & rux run 2>&1 | Out-String
                $expected = if ($expectedStatus.ContainsKey($name)) { $expectedStatus[$name] } else { 0 }
                if ($LASTEXITCODE -eq $expected) {
                    Write-Host "  run" -ForegroundColor Green
                } else {
                    Write-Host "  run FAILED" -ForegroundColor Red
                    $failed += $label
                }
            } elseif ($Run) {
                $why = if ($audible -contains $name) { 'plays sound' } else { 'reads input' }
                Write-Host "  run skipped ($why)" -ForegroundColor DarkGray
            } else {
                Write-Host ""
            }
        } else {
            Write-Host ("{0,-32} FAILED" -f $label) -ForegroundColor Red
            $output -split "`n" | Where-Object { $_ -match 'error:' } |
                Select-Object -First 3 | ForEach-Object { Write-Host "  $($_.Trim())" }
            $failed += $label
        }
    }
    finally {
        Pop-Location
    }
}

Write-Host ""
if ($failed.Count -eq 0) {
    Write-Host "All $($packages.Count) packages passed." -ForegroundColor Green
    exit 0
}
Write-Host "$($failed.Count) of $($packages.Count) failed: $($failed -join ', ')" -ForegroundColor Red
exit 1
