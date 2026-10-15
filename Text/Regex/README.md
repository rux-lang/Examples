# Regex

Compile a regular expression with `Regex::New`, which returns `Regex ! RegexError`, test text with
`IsMatch`, find where a match is with `Find` and `FindAt`, and turn plain text into a pattern with
`Escape`.

**You'll need:** [String](https://rux-lang.dev/docs/learn/string), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Presence](https://rux-lang.dev/docs/learn/presence), [CoalesceExit](https://rux-lang.dev/docs/learn/coalesce-exit)

```sh
rux run
```

```text
ABC-1234   true
abc-1234   false
ABC-12345  false
XY-0001    false
first     09:41 at bytes 17..22
time      09:41
time      09:45
time      10:15
loose     v102
exact     v1.2 from v1\.2
\d+-\d+    compiles
(\d+       a ( with no ) at byte 0
[a-z       a [ with no ] at byte 0
*.txt      nothing before the repetition at byte 0
(a)\1      needs backtracking at byte 3
```

Read the lesson: https://rux-lang.dev/docs/learn/regex
