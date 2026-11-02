# Discard

See why a call that can throw cannot be left unmarked, and how to drop its error on purpose with `try? F();` or `try F() catch { _ => {} };`.

**You'll need:** [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Outcome](https://rux-lang.dev/docs/learn/outcome)

`PrintReceipt` declares `throws OutOfPaper`. Calling it as a bare statement is refused — "call to 'PrintReceipt' can throw 'OutOfPaper' but is not marked with 'try'" — and so is `let _ = PrintReceipt(...)`. `Withdraw` drops the error deliberately with `try PrintReceipt(printer, amount) catch { _ => {} };`, whose empty block stands in for the missing success, so the money is handed over even when the paper has run out. `Main` shows the shorter `try? PrintReceipt(printer, 10);`, which also works for a call that returns a value. Only errors must be handled: an ordinary value, such as the `IoError?` that `PrintLine` returns, may be ignored.

```sh
rux run
```

```text
hand over 20
    receipt: 20 taken
hand over 50
    receipt: 50 taken
hand over 10
```

Read the lesson: https://rux-lang.dev/docs/learn/discard
