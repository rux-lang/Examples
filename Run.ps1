<#
.SYNOPSIS
Check, test or clean the example packages. With no command, show help.
.EXAMPLE
./Run.ps1 test -Filter Errors
.EXAMPLE
./Run.ps1 clean
.EXAMPLE
./Run.ps1 check -RuxExecutable ../Rux/Bin/rux.exe
#>
[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [ValidateSet('help', 'check', 'test', 'clean')]
    [string]$Command = 'help',
    [string]$Filter = '',
    [string]$RuxExecutable,
    [switch]$Help
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
# Native failures are collected per package, including when the caller enables this preference.
$PSNativeCommandUseErrorActionPreference = $false

function Show-Usage {
    @'
Usage: ./Run.ps1 <command> [options]

Commands:
  help      Show this help (the default)
  check     Type-check selected packages supported on this host
  test      Check, then run eligible executables and build native libraries
  clean     Remove the Bin and Temp folders beside every package manifest

Options:
  -Filter TEXT          Literal, case-insensitive match in relative package paths
  -RuxExecutable PATH   Compiler to use (check and test; default: rux on PATH)
  -Help                 Show this help

Examples:
  ./Run.ps1 check
  ./Run.ps1 test -Filter Errors
  ./Run.ps1 test -RuxExecutable ../Rux/Bin/rux.exe
  ./Run.ps1 clean

Runs sequentially. Platform and execution skips are reported separately.
Tests verify exit codes, not printed output. Dependencies must already be installed.
Relative compiler paths are resolved from the caller's directory.
Clean needs no compiler; without a filter it also removes the repository Temp folder.
'@ | Write-Host
}

function Format-Duration([TimeSpan]$Duration) {
    $milliseconds = [Math]::Max(0, [Math]::Round($Duration.TotalMilliseconds))
    if ($milliseconds -lt 1000) { return "$milliseconds ms" }
    if ($milliseconds -lt 60000) {
        return ($milliseconds / 1000).ToString("0.## 's'", [Globalization.CultureInfo]::InvariantCulture)
    }
    $seconds = (($milliseconds % 60000) / 1000).ToString(
        "0.0 's'", [Globalization.CultureInfo]::InvariantCulture)
    return "$([Math]::Floor($milliseconds / 60000)) min $seconds"
}

function Write-Status([string]$Verb, [string]$Detail, [string]$Color) {
    if (-not $env:NO_COLOR -and -not [Console]::IsOutputRedirected) {
        Write-Host $Verb -ForegroundColor $Color -NoNewline
        Write-Host " $Detail"
    } else {
        Write-Host "$Verb $Detail"
    }
}

function Read-Manifest([string]$Directory) {
    $section = ''
    $seen = @{}
    $type = $null
    $members = [Collections.Generic.List[string]]::new()
    $arrayText = ''
    $collecting = $false
    $hasMembers = $false
    foreach ($raw in [IO.File]::ReadAllLines((Join-Path $Directory 'Rux.toml'))) {
        # Strip comments outside quoted strings; relevant values use plain double quotes.
        $line = [regex]::Replace($raw, '("[^"\r\n]*")|#.*$', '$1').Trim()
        if (-not $line) { continue }
        if ($collecting) {
            $arrayText += ' ' + $line
        } elseif ($line -match '^\[([^\[\]]+)\]$') {
            $section = $Matches[1]
            if ($section -in @('Package', 'Workspace')) {
                if ($seen.ContainsKey($section)) { throw "Duplicate [$section] in $Directory" }
                $seen[$section] = $true
            }
            continue
        } elseif ($section -eq 'Package' -and $line -match '^Type\s*=') {
            if ($null -ne $type -or $line -notmatch '^Type\s*=\s*"(Executable|SourceLibrary|StaticLibrary|SharedLibrary)"$') {
                throw "Unsupported or duplicate Package.Type in $Directory"
            }
            $type = $Matches[1]
            continue
        } elseif ($section -eq 'Workspace' -and $line -match '^Packages\s*=') {
            if ($hasMembers) { throw "Duplicate Workspace.Packages in $Directory" }
            $hasMembers = $true
            $arrayText = $line -replace '^Packages\s*=\s*', ''
            $collecting = $true
        } elseif ($line -match '^\[') {
            throw "Unsupported section declaration in $Directory`: $line"
        } else {
            continue
        }
        if ($arrayText.Contains(']')) {
            if ($arrayText -notmatch '^\[\s*(?:"[^"\\\[\]]+"\s*(?:,\s*"[^"\\\[\]]+"\s*)*,?\s*)?\]$') {
                throw "Unsupported Workspace.Packages in $Directory"
            }
            foreach ($match in [regex]::Matches($arrayText, '"([^"\\]+)"')) {
                $members.Add($match.Groups[1].Value)
            }
            $collecting = $false
        }
    }
    if ($collecting -or ($seen.ContainsKey('Package') -eq $seen.ContainsKey('Workspace'))) {
        throw "Expected one [Package] or [Workspace] in $Directory"
    }
    if ($seen.ContainsKey('Package')) {
        if (-not $type) { throw "Missing Package.Type in $Directory" }
        return @{ Type = $type; Members = @() }
    }
    if (-not $hasMembers -or $members.Count -eq 0) {
        throw "Workspace has no explicit members in $Directory"
    }
    return @{ Type = 'Workspace'; Members = $members.ToArray() }
}

function Find-Manifests([string]$Directory) {
    if (Test-Path -LiteralPath (Join-Path $Directory 'Rux.toml') -PathType Leaf) {
        $Directory
        return
    }
    foreach ($child in Get-ChildItem -LiteralPath $Directory -Directory -Force) {
        if ($child.Name -in @('.git', 'Bin', 'Temp')) { continue }
        if ($child.Attributes -band [IO.FileAttributes]::ReparsePoint) { continue }
        Find-Manifests $child.FullName
    }
}

function Find-AllManifests([string]$Directory) {
    # Unlike Find-Manifests, keep descending: companions and members have their own outputs.
    if (Test-Path -LiteralPath (Join-Path $Directory 'Rux.toml') -PathType Leaf) { $Directory }
    foreach ($child in Get-ChildItem -LiteralPath $Directory -Directory -Force) {
        if ($child.Name -in @('.git', 'Bin', 'Temp')) { continue }
        if ($child.Attributes -band [IO.FileAttributes]::ReparsePoint) { continue }
        Find-AllManifests $child.FullName
    }
}

function Remove-Output([string]$Path) {
    $item = Get-Item -LiteralPath $Path -Force -ErrorAction SilentlyContinue
    if (-not $item -or -not $item.PSIsContainer) { return $false }
    if ($item.Attributes -band [IO.FileAttributes]::ReparsePoint) {
        # Remove only the link, never the directory it points to.
        [IO.Directory]::Delete($item.FullName, $false)
    } else {
        Remove-Item -LiteralPath $item.FullName -Recurse -Force
    }
    return $true
}

function Invoke-Clean([string]$Root) {
    $timer = [Diagnostics.Stopwatch]::StartNew()
    $directories = @(Find-AllManifests $Root | Where-Object { $_ -ne $Root } | Where-Object {
        $_.Substring($Root.Length + 1).Replace('\', '/').IndexOf(
            $Filter, [StringComparison]::OrdinalIgnoreCase) -ge 0
    })
    if (-not $directories.Count) { throw "No packages match filter '$Filter'." }
    Write-Host ''
    Write-Status '==>' 'Removing build outputs' Cyan
    $cleaned = 0
    foreach ($directory in $directories) {
        $removedBin = Remove-Output (Join-Path $directory 'Bin')
        $removedTemp = Remove-Output (Join-Path $directory 'Temp')
        if ($removedBin -or $removedTemp) { $cleaned++ }
    }
    if ($cleaned) {
        $packageNoun = if ($cleaned -eq 1) { 'package' } else { 'packages' }
        Write-Host "  Removed 'Bin' and 'Temp' from $cleaned $packageNoun"
    } else {
        Write-Host "  Skipped package 'Bin' and 'Temp' folders (not present)"
    }
    if (-not $Filter -and (Remove-Output (Join-Path $Root 'Temp'))) {
        Write-Host "  Removed the repository 'Temp' folder"
    }
    Write-Host ''
    Write-Status 'Finished' "clean in $(Format-Duration $timer.Elapsed)" Green
}

function Invoke-Stage([string]$Directory, [string]$Label, [string]$Stage, [int]$Expected) {
    $timer = [Diagnostics.Stopwatch]::StartNew()
    Push-Location -LiteralPath $Directory
    try {
        $global:LASTEXITCODE = 0
        # Merge both streams without turning stderr into a terminating PowerShell error.
        $savedPreference = $ErrorActionPreference
        try {
            $ErrorActionPreference = 'Continue'
            $output = @(& $script:compiler $Stage 2>&1)
            $succeeded = $?
            $status = $LASTEXITCODE
            if (-not $succeeded -and $status -eq 0) { $status = 1 }
        } finally {
            $ErrorActionPreference = $savedPreference
        }
        $duration = Format-Duration $timer.Elapsed
        if ($status -ne $Expected) {
            Write-Status 'Failed' "$Label ($Stage) in $duration (expected exit $Expected, actual $status)" Red
            foreach ($line in $output) { Write-Host "  $line" }
            return $false
        }
        Write-Status 'Passed' "$Label ($Stage) in $duration" Green
        return $true
    } finally {
        Pop-Location
    }
}

try {
    if (($Command -eq 'help' -or $Help) -and
        ($PSBoundParameters.ContainsKey('Filter') -or
         $PSBoundParameters.ContainsKey('RuxExecutable'))) {
        throw 'Filter and RuxExecutable require check, test or clean without -Help.'
    }
    if ($Command -eq 'help' -or $Help) { Show-Usage; exit 0 }
    if ($Command -eq 'clean') {
        if ($PSBoundParameters.ContainsKey('RuxExecutable')) { throw 'Clean does not take RuxExecutable.' }
        Invoke-Clean $PSScriptRoot
        exit 0
    }
    $workflowTimer = [Diagnostics.Stopwatch]::StartNew()
    if ($PSBoundParameters.ContainsKey('RuxExecutable') -and
        [string]::IsNullOrWhiteSpace($RuxExecutable)) { throw 'RuxExecutable cannot be empty.' }
    $compilerName = if ($RuxExecutable) { $RuxExecutable } else { 'rux' }
    $script:compiler = (Get-Command $compilerName -CommandType Application, ExternalScript `
        -ErrorAction Stop | Select-Object -First 1).Source
    $root = $PSScriptRoot
    $packages = [Collections.Generic.Dictionary[string, object]]::new([StringComparer]::Ordinal)
    foreach ($directory in Find-Manifests $root) {
        $manifest = Read-Manifest $directory
        $label = $directory.Substring($root.Length + 1).Replace('\', '/')
        if ($manifest.Type -eq 'Workspace') {
            foreach ($member in $manifest.Members) {
                if ($member -match '(^/|\\|:|[\t\r\n])' -or
                    @($member.Split('/') | Where-Object { $_ -in @('', '.', '..', '.git', 'Bin', 'Temp') }).Count) {
                    throw "Invalid workspace member '$member' in $label"
                }
                $memberDirectory = Join-Path $directory $member
                if (-not (Test-Path -LiteralPath $memberDirectory -PathType Container)) {
                    throw "Missing workspace member '$member' in $label"
                }
                $walk = $directory
                foreach ($component in $member.Split('/')) {
                    $walk = Join-Path $walk $component
                    if ((Get-Item -LiteralPath $walk).Attributes -band [IO.FileAttributes]::ReparsePoint) {
                        throw "Workspace member cannot traverse a symbolic link: $label/$member"
                    }
                }
                $memberManifest = Read-Manifest $memberDirectory
                if ($memberManifest.Type -eq 'Workspace') { throw "Nested workspace: $label/$member" }
                $packages["$label/$member"] = @{
                    Directory = $memberDirectory; Type = $memberManifest.Type; Workspace = $label
                }
            }
        } else {
            $packages[$label] = @{ Directory = $directory; Type = $manifest.Type; Workspace = '' }
        }
    }
    $rules = @{}
    foreach ($line in [IO.File]::ReadAllLines((Join-Path $root 'Scripts/RunnerExceptions.tsv'))) {
        if (-not $line.Trim() -or $line.StartsWith('#')) { continue }
        $fields = $line.Split("`t")
        if ($fields.Count -ne 5) { throw 'Each exception must have five tab-separated fields.' }
        $label, $os, $arch, $reason, $expected = $fields
        if (-not $packages.ContainsKey($label)) { throw "Stale exception: $label" }
        if ($rules.ContainsKey($label)) { throw "Duplicate exception: $label" }
        if ($os -notmatch '^(\*|windows|linux|macos|freebsd)$' -or
            $arch -notmatch '^(\*|x86_64|aarch64)$' -or
            $reason -notin @('-', 'reads input', 'plays sound', 'opens a window') -or
            $expected -notmatch '^(0|[1-9][0-9]{0,2})$' -or [int]$expected -gt 255) {
            throw "Invalid exception: $label"
        }
        $rules[$label] = @{ OS = $os; Arch = $arch; Reason = $reason; Expected = [int]$expected }
    }
    $hostOS = switch ([Environment]::OSVersion.Platform) {
        Win32NT { 'windows' }
        default {
            $systemName = (& uname -s).Trim()
            switch ($systemName) {
                Linux { 'linux' }; Darwin { 'macos' }; FreeBSD { 'freebsd' }
                default { throw "Unsupported host OS: $systemName" }
            }
        }
    }
    $architecture = [Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
    $hostArch = switch ($architecture) {
        X64 { 'x86_64' }; Arm64 { 'aarch64' }; default { $architecture.ToLowerInvariant() }
    }
    $selected = @($packages.Keys | Where-Object {
        $_.IndexOf($Filter, [StringComparison]::OrdinalIgnoreCase) -ge 0 -or
        $packages[$_].Workspace.IndexOf($Filter, [StringComparison]::OrdinalIgnoreCase) -ge 0
    })
    [Array]::Sort($selected, [StringComparer]::Ordinal)
    if (-not $selected.Count) { throw "No packages match filter '$Filter'." }
    $workflow = if ($Command -eq 'test') { 'example tests' } else { 'example checks' }
    Write-Host ''
    Write-Status '==>' "Running $workflow" Cyan
    $packageNoun = if ($selected.Count -eq 1) { 'package' } else { 'packages' }
    Write-Host "Running $($selected.Count) $packageNoun"
    $checked = 0; $executed = 0; $built = 0; $skipped = 0; $failed = 0
    foreach ($label in $selected) {
        $package = $packages[$label]
        $rule = if ($rules.ContainsKey($label)) { $rules[$label] } else {
            @{ OS = '*'; Arch = '*'; Reason = '-'; Expected = 0 }
        }
        if (($rule.OS -ne '*' -and $rule.OS -ne $hostOS) -or
            ($rule.Arch -ne '*' -and $rule.Arch -ne $hostArch)) {
            Write-Status 'Skipped' "$label (platform: requires $($rule.OS)/$($rule.Arch); host $hostOS/$hostArch)" Yellow
            $skipped++; continue
        }
        if (-not (Invoke-Stage $package.Directory $label 'check' 0)) { $failed++; continue }
        $checked++
        if ($Command -eq 'check') { continue }
        if ($package.Type -eq 'SourceLibrary') {
            # A source library is complete after its successful check.
        } elseif ($package.Type -ne 'Executable') {
            if (Invoke-Stage $package.Directory $label 'build' 0) { $built++ } else { $failed++ }
        } elseif ($rule.Reason -ne '-') {
            Write-Status 'Skipped' "$label (execution: $($rule.Reason))" Yellow
            $skipped++
        } else {
            if (Invoke-Stage $package.Directory $label 'run' $rule.Expected) {
                $executed++
            } else { $failed++ }
        }
    }
    Write-Host "Summary: $checked checked, $executed executed, $built built, $skipped skipped, $failed failed."
    Write-Host ''
    $duration = Format-Duration $workflowTimer.Elapsed
    if ($failed) { Write-Status 'Failed' "$workflow in $duration" Red; exit 1 }
    Write-Status 'Finished' "$workflow in $duration" Green
    exit 0
} catch {
    [Console]::Error.WriteLine("error: $($_.Exception.Message)")
    exit 1
}
