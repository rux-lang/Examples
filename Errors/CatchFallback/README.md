# CatchFallback

Use `try call catch { _ => fallback }`, or `(try? call) ?? fallback`, to get the success or a default value.

**You'll need:** [Catch](https://rux-lang.dev/docs/learn/catch), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

`ReadDigit` declares `-> int throws DigitError`. A single `_` arm in `catch` takes every error alike and produces the default; `try?` drops the error and gives an `int?`, which `??` then fills in. Because `try` covers the whole expression to its right, a `try ... catch` used as one operand of `+` is written in parentheses.

```sh
rux run
```

```text
volume 7, brightness 8, contrast 5
sum of 4?9 is 13
```

Read the lesson: https://rux-lang.dev/docs/learn/catch-fallback
