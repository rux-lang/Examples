# Discard

See why a call that can fail cannot be left as a bare statement, and how to drop its error on purpose with `F() !!;` or turn it into `none` with `F() !! none`.

**You'll need:** [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Outcome](https://rux-lang.dev/docs/learn/outcome)

`PrintReceipt` declares `-> int ! OutOfPaper`. Calling it as a bare statement is refused — "'PrintReceipt' can fail with 'OutOfPaper', and the result is not used" — and so is `let _ = PrintReceipt(...)`. `Withdraw` drops the error deliberately with `PrintReceipt(printer, amount) !!;`, which drops the success with it, so the money is handed over even when the paper has run out. `Main` shows `PrintReceipt(&var printer, 10) !! none`, which keeps the outcome as an `int?`: the sheets left on success, `none` on failure. Only errors must be handled: an ordinary value, such as the `IoError?` that `PrintLine` returns, may be ignored.

```sh
rux run
```

```text
hand over 20
    receipt: 20 taken
hand over 50
    receipt: 50 taken
hand over 10
receipt for 10 printed: false
```

Read the lesson: https://rux-lang.dev/docs/learn/discard
