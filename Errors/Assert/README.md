# Assert

Check what the program relies on with `Assert`, kept in every build, and `DebugAssert`, which a
release build removes.

**You'll need:** [Panic](https://rux-lang.dev/docs/learn/panic), [Slice](https://rux-lang.dev/docs/learn/slice)

```sh
rux run
```

```text
(checking that the scores are in order)
median: 8
```

A release build drops the `DebugAssert`, so its check never runs:

```sh
rux run --release
```

```text
median: 8
```

Read the lesson: https://rux-lang.dev/docs/learn/assert
