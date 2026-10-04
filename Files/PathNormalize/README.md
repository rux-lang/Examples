# PathNormalize

Tidy a path with `Normalize`, and learn what a purely lexical rewrite cannot know.

**You'll need:** [PathJoin](https://rux-lang.dev/docs/learn/path-join)

```sh
rux run
```

The output is from Windows; on Linux and macOS the separators are `/`.

```text
Bin//reports/./2026          Bin\reports\2026
Bin/old/../reports           Bin\reports
Bin/reports/2026/../../logs  Bin\logs
../shared/./notes.txt        ..\shared\notes.txt
/../etc                      \etc
Bin/reports/                 Bin\reports

equal as written    false
equal normalized    true
```

Read the lesson: https://rux-lang.dev/docs/learn/path-normalize
