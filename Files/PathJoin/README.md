# PathJoin

Join paths with `Join` and `Push`, which place separators correctly, instead of gluing strings.

**You'll need:** [Path](https://rux-lang.dev/docs/learn/path), [Move](https://rux-lang.dev/docs/learn/move)

```sh
rux run
```

The output is from Windows; on Linux and macOS the added separators are `/`.

```text
Bin  + reports     Bin\reports
Bin/ + reports     Bin/reports
Bin  + (empty)     Bin
Bin  + /etc/passwd /etc/passwd
pushed four        Bin\reports\2026\summary.txt
```

Read the lesson: https://rux-lang.dev/docs/learn/path-join
