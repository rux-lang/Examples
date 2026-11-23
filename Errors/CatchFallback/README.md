# CatchFallback

Use `call !! fallback` to get the success or a default value: the short form of `call catch { _ => fallback }` and of `(call !! none) ?? fallback`.

**You'll need:** [Catch](https://rux-lang.dev/docs/learn/catch), [Discard](https://rux-lang.dev/docs/learn/discard), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

`ReadDigit` declares `-> int ! DigitError`. `ReadDigit('7') !! 5` replaces any error with the default; a single `_` arm in `catch` does the same at greater length, and `!! none` turns the error into an `int?` that `??` then fills in. Because `!!` takes everything to its left, a `!!` used as one operand of `+` is written in parentheses.

```sh
rux run
```

```text
volume 7, brightness 8, contrast 5
sum of 4?9 is 13
```

Read the lesson: https://rux-lang.dev/docs/learn/catch-fallback
