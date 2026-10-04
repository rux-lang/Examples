# Tooling

Keep a package tidy with the other `rux` commands: format, lint, test and document it, without publishing anything.

**You'll need:** [SourceLibrary](https://rux-lang.dev/docs/learn/source-library), [Documentation](https://rux-lang.dev/docs/learn/documentation), [Range](https://rux-lang.dev/docs/learn/range)

```sh
rux run
```

```text
February 1900 has 28 days
February 1901 has 28 days
February 1902 has 28 days
February 1903 has 28 days
February 1904 has 29 days
```

The other commands, all run from this directory:

| Command           | What it does                                                         |
| ----------------- | -------------------------------------------------------------------- |
| `rux fmt`         | Rewrites the sources and `Rux.toml` in the standard layout           |
| `rux fmt --check` | Changes nothing; fails if `rux fmt` would rewrite a file             |
| `rux lint`        | Warns about what compiles but is still wrong, such as missing docs   |
| `rux test`        | Builds and runs each package below `Tests/`; status 0 passes         |
| `rux doc`         | Writes reference pages for the `pub` items to `Bin/Docs/`            |

`rux test` prints one line per test; the timings vary:

```text
Testing Tooling v0.1.0 (Debug, Windows x86-64)
Running 1 test
Passed LeapYear in 427 ms
Passed 1 test in 427 ms (1 passed, 0 failed)
```

Read the lesson: https://rux-lang.dev/docs/learn/tooling
