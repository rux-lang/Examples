<#
.SYNOPSIS
Exercise both repository runners with temporary packages and a fake compiler.
#>
[CmdletBinding()]
param([string]$ShellExecutable)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
$repository = Split-Path -Parent $PSScriptRoot
$powershell = (Get-Process -Id $PID).Path
$onWindows = [Environment]::OSVersion.Platform -eq [PlatformID]::Win32NT
if (-not $ShellExecutable) {
    $found = Get-Command sh -CommandType Application -ErrorAction SilentlyContinue
    if ($found) { $ShellExecutable = $found.Source }
    elseif ($onWindows -and (Test-Path 'C:/Program Files/Git/bin/sh.exe')) {
        $ShellExecutable = 'C:/Program Files/Git/bin/sh.exe'
    } else { throw 'A POSIX shell is required; supply -ShellExecutable PATH.' }
}
$ShellExecutable = (Get-Command $ShellExecutable -CommandType Application).Source
$originalPath = $env:PATH
$originalLog = $env:RUNNER_TEST_LOG
# Git for Windows does not add its POSIX utilities to the parent PowerShell PATH.
$shellRoot = Split-Path -Parent (Split-Path -Parent $ShellExecutable)
$utilities = Join-Path $shellRoot 'usr/bin'
if ($onWindows -and (Test-Path $utilities)) { $env:PATH = "$utilities;$env:PATH" }
$fixture = Join-Path $repository ('Temp/RunnerTests-' + [guid]::NewGuid().ToString('N'))
$fixtureRoot = Join-Path $fixture 'Repository with spaces'
$caller = Join-Path $fixture 'Caller with spaces'
$log = Join-Path $fixture 'calls.log'
$assertions = 0

function Write-Text([string]$Path, [string]$Text) {
    $null = [IO.Directory]::CreateDirectory((Split-Path -Parent $Path))
    [IO.File]::WriteAllText($Path, $Text.Replace("`r`n", "`n"), [Text.UTF8Encoding]::new($false))
}
function New-Package([string]$Label, [string]$Type = 'Executable') {
    Write-Text (Join-Path $fixtureRoot "$Label/Rux.toml") @"
[Manifest]
Version = 1
[Package]
Name = "Fixture"
Type = "$Type" # comments are allowed
[Dependencies]
Type = { Path = "Type" }
"@
}
function Assert-True([bool]$Condition, [string]$Message) {
    if (-not $Condition) { throw "Assertion failed: $Message" }
    $script:assertions++
}
function Invoke-Runner([string]$Runner, [string[]]$Arguments = @()) {
    Push-Location -LiteralPath $caller
    try {
        if ($Runner -eq 'powershell') {
            $env:RUNNER_TEST_LOG = $log
            $output = @(& $powershell -NoProfile -File (Join-Path $fixtureRoot 'Run.ps1') @Arguments 2>&1)
        } else {
            $env:RUNNER_TEST_LOG = ($log.Replace('\', '/') -replace '^([A-Za-z]):', '/$1')
            $output = @(& $ShellExecutable -c 'PATH=/usr/bin:/bin:$PATH; export PATH; exec sh "$@"' `
                sh (Join-Path $fixtureRoot 'Run.sh') @Arguments 2>&1)
        }
        $status = $LASTEXITCODE
        return @{ Status = $status; Output = ($output | Out-String) }
    } finally { Pop-Location }
}
function Compiler-Args([string]$Runner) {
    if ($Runner -eq 'powershell') { return @('-RuxExecutable', './fake rux.ps1') }
    return @('--rux-executable', './fake rux.sh')
}
function Filter-Args([string]$Runner, [string]$Value) {
    if ($Runner -eq 'powershell') { return @('-Filter', $Value) }
    return @('--filter', $Value)
}

try {
    $null = [IO.Directory]::CreateDirectory($caller)
    foreach ($relative in @('Run.ps1', 'Run.sh', 'Scripts/ReadManifest.awk')) {
        Write-Text (Join-Path $fixtureRoot $relative) ([IO.File]::ReadAllText((Join-Path $repository $relative)))
    }
    foreach ($label in @('A/Good', 'B/Expected', 'C/Input', 'D/Platform', 'I/CheckFail',
        'J/RunFail', 'Z/After', 'H/Workspace/App', 'A/Good/Companion',
        'Bin/Ignore', 'Temp/Ignore', '.git/Ignore')) { New-Package $label }
    New-Package 'E/Static' 'StaticLibrary'
    New-Package 'F/Shared' 'SharedLibrary'
    New-Package 'G/Source' 'SourceLibrary'
    New-Package 'H/Workspace/Lib' 'SourceLibrary'
    New-Package 'K/BuildFail' 'StaticLibrary'
    Write-Text (Join-Path $fixtureRoot 'H/Workspace/Rux.toml') @'
[Manifest]
Version = 1
[Workspace]
Packages = [
    "App", # duplicate members must be deduplicated
    "Lib", "App",
]
'@
    foreach ($failure in @(@('B/Expected', 'run', 1), @('I/CheckFail', 'check', 7),
        @('J/RunFail', 'run', 9), @('K/BuildFail', 'build', 8))) {
        Write-Text (Join-Path $fixtureRoot "$($failure[0])/$($failure[1]).status") "$($failure[2])"
    }
    $otherOS = if ($onWindows) { 'linux' } else { 'windows' }
    $rules = "B/Expected`t*`t*`t-`t1`nC/Input`t*`t*`treads input`t0`nD/Platform`t$otherOS`t*`t-`t0`n"
    $rulePath = Join-Path $fixtureRoot 'Scripts/RunnerExceptions.tsv'
    Write-Text $rulePath $rules
    Write-Text (Join-Path $caller 'fake rux.ps1') @'
param([string]$Stage)
[IO.File]::AppendAllText($env:RUNNER_TEST_LOG, "$((Get-Location).Path.Replace('\', '/'))|$Stage`n")
Write-Output "stdout diagnostic for $Stage"
[Console]::Error.WriteLine("stderr diagnostic for $Stage")
$statusFile = Join-Path (Get-Location) "$Stage.status"
if (Test-Path -LiteralPath $statusFile) { exit [int]([IO.File]::ReadAllText($statusFile)) }
exit 0
'@
    Write-Text (Join-Path $caller 'fake rux.sh') @'
#!/bin/sh
printf '%s|%s\n' "$PWD" "$1" >> "$RUNNER_TEST_LOG"
printf 'stdout diagnostic for %s\n' "$1"
printf 'stderr diagnostic for %s\n' "$1" >&2
# A child must never consume the runner's package-list input stream.
if [ "$1" = run ]; then
    if IFS= read -r unexpected; then printf 'unexpected stdin: %s\n' "$unexpected" >&2; exit 42; fi
fi
if [ -f "$1.status" ]; then exit "$(cat "$1.status")"; fi
exit 0
'@
    & $ShellExecutable -c 'PATH=/usr/bin:/bin:$PATH; export PATH; chmod +x "$1"' `
        sh (Join-Path $caller 'fake rux.sh')
    if ($LASTEXITCODE) { throw 'Could not make fake compiler executable.' }
    $selections = @{}
    foreach ($runner in @('powershell', 'shell')) {
        $compilerArgs = @(Compiler-Args $runner)
        $filterName = (Filter-Args $runner 'unused')[0]
        $compilerName = $compilerArgs[0]
        $helpFlag = if ($runner -eq 'powershell') { '-Help' } else { '--help' }
        $savedPath = $env:PATH
        try {
            $env:PATH = ''
            $result = Invoke-Runner $runner
            Assert-True ($result.Status -eq 0 -and $result.Output.Contains('Usage:')) "$runner default help without PATH"
        } finally { $env:PATH = $savedPath }
        foreach ($argsToTry in @(@('help'), @($helpFlag))) {
            $result = Invoke-Runner $runner $argsToTry
            Assert-True ($result.Status -eq 0 -and $result.Output.Contains('Usage:')) "$runner help alias"
        }
        foreach ($argsToTry in @(@('unknown'), @('check', '-unknown'), @('check', $compilerName),
            @('check', $filterName), @('check', $filterName, $helpFlag),
            @('help', $filterName, 'A'), @($filterName, 'A'),
            @('check', $compilerName, './missing-rux'),
            @('check', $filterName, 'A', $filterName, 'B'))) {
            $result = Invoke-Runner $runner $argsToTry
            Assert-True ($result.Status -ne 0) "$runner rejects $($argsToTry -join ' ')"
        }
        $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner 'does-not-exist'))
        Assert-True ($result.Status -ne 0 -and $result.Output -match '(?i)no packages match') "$runner unmatched filter"
        $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner '[Good]'))
        Assert-True ($result.Status -ne 0) "$runner filter is literal"
        $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner 'a/gOoD'))
        Assert-True ($result.Status -eq 0 -and $result.Output -match '1 checked') "$runner case-insensitive filter"
        Write-Text $log ''
        $result = Invoke-Runner $runner (@('test') + $compilerArgs)
        Assert-True ($result.Status -eq 1) "$runner test failures produce nonzero exit"
        Assert-True ($result.Output -match '11 checked, 4 executed, 2 built, 2 skipped, 3 failed') "$runner summary: $($result.Output)"
        Assert-True ($result.Output -match 'expected exit 0, actual 9') "$runner exit diagnostic"
        Assert-True ($result.Output -match 'stdout diagnostic' -and $result.Output -match 'stderr diagnostic') "$runner both diagnostic streams"
        Assert-True ($result.Output -match 'Skipped .*\(platform:' -and $result.Output -match 'Skipped .*\(execution:') "$runner skip reasons"
        Assert-True ($result.Output -match 'Passed Z/After \(run\) in') "$runner continues after failures"
        Assert-True ($result.Output -match '==> Running example tests' -and $result.Output -match 'Running 13 packages') "$runner workflow heading"
        Assert-True ($result.Output -match 'Failed example tests in' -and $result.Output -match 'Failed I/CheckFail \(check\) in') "$runner failure timing"
        Assert-True (-not $result.Output.Contains([string][char]27)) "$runner captured output has no ANSI escapes"
        $calls = [IO.File]::ReadAllText($log).Replace('\', '/')
        Assert-True ($calls -notmatch 'Companion|Ignore|D/Platform|I/CheckFail\|run|C/Input\|run') "$runner excluded stages"
        $selections[$runner] = @($calls -split "`n" | Where-Object { $_ } | ForEach-Object {
            ($_ -split '/Repository with spaces/')[1]
        }) -join "`n"
        $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner 'h/workspace'))
        Assert-True ($result.Status -eq 0 -and $result.Output -match '2 checked') "$runner workspace selection"
        $result = Invoke-Runner $runner (@('test') + $compilerArgs + (Filter-Args $runner 'B/Expected'))
        Assert-True ($result.Status -eq 0 -and $result.Output -match '1 executed') "$runner expected nonzero exit"
        Assert-True ($result.Output -match 'Finished example tests in') "$runner success timing"
        $result = Invoke-Runner $runner (@('test') + $compilerArgs + (Filter-Args $runner 'D/Platform'))
        Assert-True ($result.Status -eq 0 -and $result.Output -match '0 checked.*1 skipped') "$runner all unsupported selection"
        $oppositeArch = if ([Runtime.InteropServices.RuntimeInformation]::OSArchitecture -eq 'X64') {
            'aarch64'
        } else { 'x86_64' }
        Write-Text $rulePath ($rules + "A/Good`t*`t$oppositeArch`t-`t0`n")
        $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner 'A/Good'))
        Assert-True ($result.Status -eq 0 -and $result.Output -match '0 checked.*1 skipped') "$runner architecture restriction"
        Write-Text $rulePath $rules
        foreach ($badRules in @($rules + "Stale/Path`t*`t*`t-`t0`n", $rules + $rules,
            "A/Good`tbogus`t*`t-`t0`n", "A/Good`t*`t*`t-`t999`n")) {
            Write-Text $rulePath $badRules
            $result = Invoke-Runner $runner (@('check') + $compilerArgs + (Filter-Args $runner 'A/Good'))
            Assert-True ($result.Status -ne 0) "$runner validates all exception entries"
        }
        Write-Text $rulePath $rules
        $manifestPath = Join-Path $fixtureRoot 'A/Good/Rux.toml'
        $validManifest = [IO.File]::ReadAllText($manifestPath)
        foreach ($badManifest in @("[Package]`nName = `"NoType`"`n",
            "[Package]`nType = `"Unknown`"`n", "[Workspace]`nPackages = [unterminated`n",
            "[Workspace]`nPackages = [`"../Escape`"]`n",
            "[Workspace]`nPackages = [`"Missing`"]`n")) {
            Write-Text $manifestPath $badManifest
            $result = Invoke-Runner $runner (@('check') + $compilerArgs)
            Assert-True ($result.Status -ne 0) "$runner rejects malformed manifest"
        }
        Write-Text $manifestPath $validManifest
        Write-Host "$runner fixture tests passed."
    }
    Assert-True ($selections.powershell -ceq $selections.shell) 'Both runners invoke identical packages and stages'
    Write-Host "All $assertions runner assertions passed."
} finally {
    $env:PATH = $originalPath
    $env:RUNNER_TEST_LOG = $originalLog
    # Only remove this invocation's generated fixture directory within repository Temp.
    $resolved = [IO.Path]::GetFullPath($fixture)
    $allowed = [IO.Path]::GetFullPath((Join-Path $repository 'Temp')) + [IO.Path]::DirectorySeparatorChar
    if (-not $resolved.StartsWith($allowed, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing cleanup outside fixture root: $resolved"
    }
    if (Test-Path -LiteralPath $resolved) { Remove-Item -LiteralPath $resolved -Recurse -Force }
}
