# Grep

Search files for lines that match a regular expression, like the Unix tool of the same name, with
`-i`, `-n`, `-c`, `-v` and `--help` read by the CommandLine package and an exit status that says
whether anything matched. Run with no arguments, it takes a tour of fixed command lines over its
own source.

**You'll need:** Parts 1–26 — this project is the checkpoint for Systems, and leans on [CommandLine](https://rux-lang.dev/docs/learn/command-line), [Regex](https://rux-lang.dev/docs/learn/regex), [File](https://rux-lang.dev/docs/learn/file) and [BufferedIo](https://rux-lang.dev/docs/learn/buffered-io).

```sh
rux run
```

```text
$ grep -n ^func Src/Main.rux
38:func SearchFile(allocator: Allocator, regex: &Regex, path: OsStringView, show: Show)
70:func Pattern(allocator: Allocator, parsed: &Parsed) -> String ! TextError {
77:func Run(allocator: Allocator, parsed: &Parsed, screen: &var TextWriter) -> int ! FormatError {
128:func Split(text: OsStringView, words: var OsStringView[..]) -> uint {
144:func Main() -> int {
(exit status 0)
$ grep -c -i regex Src/Main.rux Rux.toml
Src/Main.rux:9
Rux.toml:1
(exit status 0)
$ grep -v -c ^\s*// Src/Main.rux
171
(exit status 0)
$ grep -n (unclosed Src/Main.rux
grep: bad pattern '(unclosed' at byte 0
(exit status 2)
$ grep -x fn Src/Main.rux
grep: unknown option '-x'
$ grep nothing Src/Missing.rux
grep: Src/Missing.rux: cannot be read
(exit status 2)
$ grep --help
Print the lines of files that match a pattern

Usage: grep [options] <pattern> [paths...]

Arguments:
  <pattern>   The regular expression to look for
  [paths...]  The files to search

Options:
  -i, --ignore-case   Ignore the difference between upper and lower case
  -n, --line-number   Put each line's number in front of it
  -c, --count         Print only how many lines were selected
  -v, --invert-match  Select the lines that do not match
  -h, --help          Print this help
(exit status 0)
```

Pass arguments after `--` to search for real, for example `rux run -- -in "name" Rux.toml`.

Read the project: https://rux-lang.dev/docs/learn/grep
