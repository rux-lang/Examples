# UnitTest

Write `#Test()` functions with the `Test` package's `Expect` checks beside the code they test, and
run them with `rux test`, all of them or only those whose names match a filter.

**You'll need:** [SourceLibrary](https://rux-lang.dev/docs/learn/source-library), [Tooling](https://rux-lang.dev/docs/learn/tooling), [Module](https://rux-lang.dev/docs/learn/module), [Presence](https://rux-lang.dev/docs/learn/presence), [Propagate](https://rux-lang.dev/docs/learn/propagate)

```sh
rux test
```

```text
Testing UnitTest v0.1.0 (Debug, Windows x86-64)
Running 1 test
Passed UnitTest in 431 ms
Passed 1 test in 437 ms (1 passed, 0 failed)
```

The platform and the times vary. `rux test` counts test packages, so `1 test` is this package with
its five tests. A passing package is reported in one line; when a check fails, `rux test` prints
the runner's report instead, naming each test and what the failed check expected and got.

Read the lesson: https://rux-lang.dev/docs/learn/unit-test
