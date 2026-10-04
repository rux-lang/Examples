# BuildMode

Tell a debug build from a release build with `#build.mode`, and watch `DebugAssert` disappear from a release build.

**You'll need:** [When](https://rux-lang.dev/docs/learn/when), [Assert](https://rux-lang.dev/docs/learn/assert)

```sh
rux run
```

```text
Profile: Debug
Debug build: unoptimized, with every check switched on
Debug assertions: kept
  ...checking that the scores are sorted
Done
```

```sh
rux run --release
```

```text
Profile: Release
Release build: optimized, with the debug checks compiled out
Debug assertions: removed
Done
```

Read the lesson: https://rux-lang.dev/docs/learn/build-mode
