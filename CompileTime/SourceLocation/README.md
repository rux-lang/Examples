# SourceLocation

Read the file, line, column and function an expression is written in with `#source`, and see why a helper reports its own line rather than its caller's.

**You'll need:** [Function](https://rux-lang.dev/docs/learn/function), [Target](https://rux-lang.dev/docs/learn/target)

```sh
rux run
```

```text
This read is at line 24, column 23 of Main.rux, in Main
A helper that reads #source itself:
  Main.rux:14 in LogHere: first call
  Main.rux:14 in LogHere: second call
A helper that is passed #source.line:
  line 31: first call
  line 32: second call
```

Read the lesson: https://rux-lang.dev/docs/learn/source-location
