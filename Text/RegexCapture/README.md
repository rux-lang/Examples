# RegexCapture

Pull the parts of a match out with numbered and named groups through `Capture`, walk every match
with `FindAll` and the text between them with `Split`, and make new text with `Replace` and
`ReplaceFirst`.

**You'll need:** [Regex](https://rux-lang.dev/docs/learn/regex), [Iterator](https://rux-lang.dev/docs/learn/iterator)

```sh
rux run
```

```text
groups    3
match     2026-10-15
year      2026
month     10
day       15
v3.1      major 3, minor 1
v4        major 4, minor -
found     2026-10-15 at byte 9
found     2026-11-02 at byte 29
found     2027-01-31 at byte 49
part      [apples]
part      [pears]
part      [plums]
part      [figs]
Released 15.10.2026, patched 02.11.2026, retired 31.01.2027.
Released [2026-10-15], patched 2026-11-02, retired 2027-01-31.
```

Read the lesson: https://rux-lang.dev/docs/learn/regex-capture
