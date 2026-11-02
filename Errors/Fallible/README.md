# Fallible

Return a value or throw an error with `-> T throws E`, where `return value;` is the success, and handle the error at the call with `try` and `catch`.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Variant](https://rux-lang.dev/docs/learn/variant)

`ExactDivide` declares `-> int throws DivideError`, a variant with one case per way the division can go wrong. `Report` calls it inside `try { ... } catch { ... }`: on success the block carries on with the value, and on failure the `catch` arms — ordinary match arms over the error — pick out `ByZero` or `NotExact(remainder)`. Calling `ExactDivide` without `try` is a compile-time error, so an error is never ignored by accident.

```sh
rux run
```

```text
12 / 4 = 3
12 / 0 fails: no dividing by zero
13 / 4 fails: 1 left over
```

Read the lesson: https://rux-lang.dev/docs/learn/fallible
