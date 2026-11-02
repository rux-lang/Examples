# ErrorMapping

Pass an error to the caller as your own error type with `try call catch { e => throw Mapped(e) }`, adding context such as a line number.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [Propagate](https://rux-lang.dev/docs/learn/propagate)

`ParseNumber` throws a `DigitError` that knows only a position. `WindowArea` declares `throws SettingError`, so a plain `try` cannot pass the `DigitError` on — an error leaves a function only as itself. Each call is instead written `try ParseNumber(text) catch { e => throw SettingError { line: ..., column: e.position + 1 } }`: on success the arm never runs, and on failure it builds the new error from the old one and the line only `WindowArea` knows. `Show` handles the mapped error with a `try { ... } catch { ... }` block.

```sh
rux run
```

```text
80 x 24: area 1920
8O x 24: line 1, column 2 is not a digit
80 x 2-4: line 2, column 2 is not a digit
```

Read the lesson: https://rux-lang.dev/docs/learn/error-mapping
