# Read only the manifest declarations the runner needs. This is deliberately not
# a general TOML parser: unsupported Package.Type or Workspace.Packages forms fail.
function fail(message) {
    print "error: " FILENAME ": " message > "/dev/stderr"
    invalid = 1
    exit 1
}
function trim(value) {
    sub(/^[ \t\r]+/, "", value)
    sub(/[ \t\r]+$/, "", value)
    return value
}
function uncomment(value,    i, quoted, result, char) {
    quoted = 0
    result = ""
    for (i = 1; i <= length(value); i++) {
        char = substr(value, i, 1)
        if (char == "\"") quoted = !quoted
        if (char == "#" && !quoted) break
        result = result char
    }
    return trim(result)
}
function parse_members(value,    member, count) {
    if (value !~ /^\[/ || value !~ /\]$/) fail("unsupported Workspace.Packages")
    value = trim(substr(value, 2, length(value) - 2))
    count = 0
    while (value != "") {
        if (value !~ /^"[^"\\\[\]]+"/) fail("unsupported workspace member")
        match(value, /^"[^"\\\[\]]+"/)
        member = substr(value, 2, RLENGTH - 2)
        members[++count] = member
        value = trim(substr(value, RLENGTH + 1))
        if (value == "") break
        if (substr(value, 1, 1) != ",") fail("expected comma between members")
        value = trim(substr(value, 2))
    }
    member_count = count
}
{
    line = uncomment($0)
    if (line == "") next
    if (collecting) {
        array_text = array_text " " line
    } else if (line ~ /^\[[^\[\]]+\]$/) {
        section = substr(line, 2, length(line) - 2)
        if (section == "Package" || section == "Workspace") {
            if (seen[section]++) fail("duplicate section " section)
        }
        next
    } else if (section == "Package" && line ~ /^Type[ \t]*=/) {
        if (type != "" || line !~ /^Type[ \t]*=[ \t]*"(Executable|SourceLibrary|StaticLibrary|SharedLibrary)"$/)
            fail("unsupported or duplicate Package.Type")
        sub(/^Type[ \t]*=[ \t]*"/, "", line)
        sub(/"$/, "", line)
        type = line
        next
    } else if (section == "Workspace" && line ~ /^Packages[ \t]*=/) {
        if (has_members++) fail("duplicate Workspace.Packages")
        sub(/^Packages[ \t]*=[ \t]*/, "", line)
        array_text = line
        collecting = 1
    } else if (line ~ /^\[/) {
        fail("unsupported section declaration")
    } else next
    if (index(array_text, "]")) {
        parse_members(array_text)
        collecting = 0
    }
}
END {
    if (invalid) exit 1
    if (collecting || (seen["Package"] && seen["Workspace"]) ||
        (!seen["Package"] && !seen["Workspace"])) fail("expected one Package or Workspace")
    if (seen["Package"]) {
        if (type == "") fail("missing Package.Type")
        print "package\t" type
    } else {
        if (!has_members || !member_count) fail("workspace has no explicit members")
        print "workspace\t-"
        for (i = 1; i <= member_count; i++) print members[i]
    }
}
