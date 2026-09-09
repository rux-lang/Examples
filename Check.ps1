# Type-checks every example package, or runs them all with -Run.
#
# There is no CI in this repository, so this is what stands in for it: the
# compiler is pre-1.0 and a rebuild can invalidate an example that passed
# yesterday, which is only noticed by checking all of them.
#
#   ./Check.ps1          type-check every package
#   ./Check.ps1 -Run     type-check, then run the ones that need no input

param(
    [switch]$Run
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot

# Packages that read standard input, so running them unattended would block.
$needsInput = @('Circle')

$failed = @()
$packages = Get-ChildItem -Path $root -Directory |
    Where-Object { Test-Path (Join-Path $_.FullName 'Rux.toml') } |
    Sort-Object Name

foreach ($package in $packages) {
    $name = $package.Name
    Push-Location $package.FullName
    try {
        $output = & rux check 2>&1 | Out-String
        if ($LASTEXITCODE -eq 0) {
            Write-Host ("{0,-12} check" -f $name) -NoNewline
            if ($Run -and $needsInput -notcontains $name) {
                $null = & rux run 2>&1 | Out-String
                if ($LASTEXITCODE -eq 0) {
                    Write-Host "  run" -ForegroundColor Green
                } else {
                    Write-Host "  run FAILED" -ForegroundColor Red
                    $failed += $name
                }
            } elseif ($Run) {
                Write-Host "  run skipped (reads input)" -ForegroundColor DarkGray
            } else {
                Write-Host ""
            }
        } else {
            Write-Host ("{0,-12} FAILED" -f $name) -ForegroundColor Red
            $output -split "`n" | Where-Object { $_ -match 'error:' } |
                Select-Object -First 3 | ForEach-Object { Write-Host "  $($_.Trim())" }
            $failed += $name
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
