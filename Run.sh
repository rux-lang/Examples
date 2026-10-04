#!/bin/sh
# POSIX peer of Run.ps1; keep behavior covered by Scripts/TestRunners.ps1.
set -eu

die() { printf 'error: %s\n' "$*" >&2; exit 1; }
usage() {
    cat <<'EOF'
Usage: sh Run.sh <command> [options]

Commands:
  help      Show this help (the default)
  check     Type-check selected packages supported on this host
  test      Check, then run eligible executables and build native libraries

Options (check and test):
  --filter TEXT          Literal, case-insensitive match in relative package paths
  --rux-executable PATH  Compiler to use (default: rux on PATH)
  -h, --help            Show this help

Examples:
  sh Run.sh check
  sh Run.sh test --filter Errors
  sh Run.sh test --rux-executable ../Rux/Bin/rux

Runs sequentially. Platform and execution skips are reported separately.
Tests verify exit codes, not printed output. Dependencies must already be installed.
Relative compiler paths are resolved from the caller's directory.
EOF
}

command_name=${1:-help}
[ "$#" -eq 0 ] || shift
case $command_name in
    help|-h|--help) [ "$#" -eq 0 ] || die 'help takes no options'; usage; exit 0 ;;
    check|test) ;;
    *) die "unknown command '$command_name'" ;;
esac
filter=
compiler_name=rux
options_seen=
show_help=false
while [ "$#" -gt 0 ]; do
    case $1 in
        --filter|--rux-executable)
            [ "$#" -ge 2 ] || die "option '$1' requires a value"
            case $2 in --filter|--rux-executable|-h|--help) die "option '$1' requires a value" ;; esac
            case " $options_seen " in *" $1 "*) die "duplicate option '$1'" ;; esac
            options_seen="$options_seen $1"
            case $1 in
                --filter) filter=$2 ;;
                --rux-executable) compiler_name=$2; [ -n "$2" ] || die 'compiler cannot be empty' ;;
            esac
            shift 2 ;;
        -h|--help) show_help=true; shift ;;
        *) die "unknown option '$1'" ;;
    esac
done
if "$show_help"; then
    [ -z "$options_seen" ] || die 'filter and compiler options cannot be combined with help'
    usage
    exit 0
fi

style_enabled=false
if [ -t 1 ] && [ -z "${NO_COLOR:-}" ]; then style_enabled=true; fi
status_line() {
    if "$style_enabled"; then
        printf '\033[1;%sm%s\033[0m %s\n' "$3" "$1" "$2"
    else
        printf '%s %s\n' "$1" "$2"
    fi
}
# GNU date provides fractional timing; BSD date falls back to whole seconds.
fractional_clock=true
case $(date +%s%N) in *[!0-9]*) fractional_clock=false ;; esac
now_ms() {
    if "$fractional_clock"; then printf '%s\n' "$(($(date +%s%N) / 1000000))"
    else printf '%s000\n' "$(date +%s)"; fi
}
format_duration() {
    awk -v ms="$1" -v precise="$fractional_clock" 'BEGIN {
        if (ms < 0) ms = 0
        if (ms < 1000) {
            if (precise == "true") printf "%d ms", ms
            else printf "<1 s"
        } else if (ms < 60000) {
            value = sprintf("%.2f", ms / 1000)
            sub(/0+$/, "", value); sub(/\.$/, "", value)
            printf "%s s", value
        } else printf "%d min %.1f s", int(ms / 60000), (ms % 60000) / 1000
    }'
}
workflow_started=$(now_ms)
repository_root=$(CDPATH= cd -P "$(dirname "$0")" && pwd)
case $compiler_name in
    */*)
        compiler_directory=$(CDPATH= cd -P "$(dirname "$compiler_name")" && pwd) ||
            die "compiler directory does not exist: $compiler_name"
        compiler=$compiler_directory/$(basename "$compiler_name") ;;
    *) compiler=$(command -v "$compiler_name") || die "compiler not found: $compiler_name" ;;
esac
[ -f "$compiler" ] && [ -x "$compiler" ] || die "compiler is not executable: $compiler"
# command -v can return a relative path when PATH contains relative entries.
case $compiler in
    /*) ;;
    *) compiler=$(CDPATH= cd -P "$(dirname "$compiler")" && pwd)/$(basename "$compiler") ;;
esac

task_temp=$(mktemp -d "${TMPDIR:-/tmp}/rux-examples.XXXXXXXX")
trap 'rm -rf "$task_temp"' 0
trap 'exit 130' INT
trap 'exit 143' TERM HUP
tab=$(printf '\t')
export LC_ALL=C

# Stop at the first package/workspace in each subtree: children are companions.
discover() {
    if [ -f "$1/Rux.toml" ]; then
        printf '%s\n' "$1"
        return
    fi
    for child in "$1"/* "$1"/.[!.]* "$1"/..?*; do
        [ -d "$child" ] && [ ! -L "$child" ] || continue
        case ${child##*/} in .git|Bin|Temp) continue ;; esac
        # Recursive calls run in a subshell so loop variables stay local.
        (discover "$child") || return 1
    done
}
discover "$repository_root" > "$task_temp/roots"
: > "$task_temp/packages"
while IFS= read -r directory; do
    awk -f "$repository_root/Scripts/ReadManifest.awk" "$directory/Rux.toml" > "$task_temp/manifest"
    IFS="$tab" read -r kind package_type < "$task_temp/manifest"
    label=${directory#"$repository_root"/}
    case $kind in
        package) printf '%s\t%s\t-\n' "$label" "$package_type" >> "$task_temp/packages" ;;
        workspace)
            sed '1d' "$task_temp/manifest" > "$task_temp/members"
            while IFS= read -r member; do
                case /$member/ in
                    *//*|*/./*|*/../*|*/.git/*|*/Bin/*|*/Temp/*|*\\*|*:*|*"$tab"*)
                        die "invalid workspace member '$member' in $label" ;;
                esac
                member_directory=$directory/$member
                [ -d "$member_directory" ] || die "missing workspace member '$member' in $label"
                # Reject symbolic links in every member path component.
                walk=$member_directory
                while [ "$walk" != "$directory" ]; do
                    [ ! -L "$walk" ] || die "workspace member traverses a symbolic link: $label/$member"
                    walk=${walk%/*}
                done
                awk -f "$repository_root/Scripts/ReadManifest.awk" "$member_directory/Rux.toml" > "$task_temp/member"
                IFS="$tab" read -r member_kind member_type < "$task_temp/member"
                [ "$member_kind" = package ] || die "nested workspace: $label/$member"
                printf '%s\t%s\t%s\n' "$label/$member" "$member_type" "$label" >> "$task_temp/packages"
            done < "$task_temp/members" ;;
    esac
done < "$task_temp/roots"
sort -u "$task_temp/packages" > "$task_temp/sorted"

# Join validated shared rules to all packages before filtering, so stale rules cannot hide.
awk -F '\t' '
    function fail(message) { print "error: " message > "/dev/stderr"; invalid = 1; exit 1 }
    FILENAME == ARGV[1] { packages[$1] = 1; next }
    /^#/ || /^[ \r]*$/ { next }
    {
        sub(/\r$/, "", $0)
        if (NF != 5) fail("each exception must have five tab-separated fields")
        if (!($1 in packages)) fail("stale exception: " $1)
        if (seen[$1]++) fail("duplicate exception: " $1)
        if ($2 !~ /^(\*|windows|linux|macos|freebsd)$/ ||
            $3 !~ /^(\*|x86_64|aarch64)$/ || $4 !~ /^(-|reads input|plays sound)$/ ||
            $5 !~ /^(0|[1-9][0-9]*)$/ || length($5) > 3 || $5 + 0 > 255)
            fail("invalid exception: " $1)
        print $0
    }
    END { if (invalid) exit 1 }
' "$task_temp/sorted" "$repository_root/Scripts/RunnerExceptions.tsv" > "$task_temp/rules"
RUNNER_FILTER=$filter awk -F '\t' '
    FILENAME == ARGV[1] { rules[$1] = $2 FS $3 FS $4 FS $5; next }
    index(tolower($1), tolower(ENVIRON["RUNNER_FILTER"])) ||
        ($3 != "-" && index(tolower($3), tolower(ENVIRON["RUNNER_FILTER"]))) {
        print $1 FS $2 FS (($1 in rules) ? rules[$1] : "*\t*\t-\t0")
    }
' "$task_temp/rules" "$task_temp/sorted" > "$task_temp/selected"
[ -s "$task_temp/selected" ] || die "no packages match filter '$filter'"

case $(uname -s) in
    Linux) host_os=linux ;; Darwin) host_os=macos ;; FreeBSD) host_os=freebsd ;;
    MINGW*|MSYS*|CYGWIN*) host_os=windows ;; *) die 'unsupported host OS' ;;
esac
case $(uname -m) in
    x86_64|amd64) host_arch=x86_64 ;; aarch64|arm64) host_arch=aarch64 ;;
    *) host_arch=$(uname -m) ;;
esac

run_stage() {
    stage=$1
    expected_status=$2
    stage_started=$(now_ms)
    if (cd "$repository_root/$label" && "$compiler" "$stage" < /dev/null) > "$task_temp/output" 2>&1; then
        actual_status=0
    else
        actual_status=$?
    fi
    duration=$(format_duration "$(($(now_ms) - stage_started))")
    if [ "$actual_status" -ne "$expected_status" ]; then
        status_line Failed "$label ($stage) in $duration (expected exit $expected_status, actual $actual_status)" 31
        sed 's/^/  /' "$task_temp/output"
        return 1
    fi
    status_line Passed "$label ($stage) in $duration" 32
}
case $command_name in test) workflow='example tests' ;; check) workflow='example checks' ;; esac
printf '\n'
status_line '==>' "Running $workflow" 36
package_count=$(awk 'END { print NR }' "$task_temp/selected")
package_noun=packages
[ "$package_count" -ne 1 ] || package_noun=package
printf 'Running %s %s\n' "$package_count" "$package_noun"
checked=0 executed=0 built=0 skipped=0 failed=0
while IFS="$tab" read -r label package_type allowed_os allowed_arch reason expected; do
    if { [ "$allowed_os" != '*' ] && [ "$allowed_os" != "$host_os" ]; } ||
       { [ "$allowed_arch" != '*' ] && [ "$allowed_arch" != "$host_arch" ]; }; then
        status_line Skipped "$label (platform: requires $allowed_os/$allowed_arch; host $host_os/$host_arch)" 33
        skipped=$((skipped + 1))
        continue
    fi
    if ! run_stage check 0; then failed=$((failed + 1)); continue; fi
    checked=$((checked + 1))
    [ "$command_name" = test ] || continue
    case $package_type in
        SourceLibrary) : ;; # Complete after its successful check.
        StaticLibrary|SharedLibrary)
            if run_stage build 0; then built=$((built + 1)); else failed=$((failed + 1)); fi ;;
        Executable)
            if [ "$reason" != '-' ]; then
                status_line Skipped "$label (execution: $reason)" 33
                skipped=$((skipped + 1))
            elif run_stage run "$expected"; then executed=$((executed + 1))
            else failed=$((failed + 1)); fi ;;
    esac
done < "$task_temp/selected"
printf 'Summary: %s checked, %s executed, %s built, %s skipped, %s failed.\n' "$checked" "$executed" "$built" "$skipped" "$failed"
printf '\n'
duration=$(format_duration "$(($(now_ms) - workflow_started))")
if [ "$failed" -ne 0 ]; then status_line Failed "$workflow in $duration" 31; exit 1; fi
status_line Finished "$workflow in $duration" 32
