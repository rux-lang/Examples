# Fallible

Return a value or fail with an error by declaring `-> T ! E`, where `return value;` is the success, and take the outcome apart with a `match` on its two sides.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Variant](https://rux-lang.dev/docs/learn/variant)

`ExactDivide` declares `-> int ! DivideError`, a variant with one case per way the division can go wrong. A call to it is a fallible value, `int ! DivideError`, which holds either the answer or the error. `Report` matches it by side: `.Success(value)` binds the answer, and `.Failure(...)` arms pick out `ByZero` or `NotExact(remainder)` on the error side. Using the call as if it were an `int`, or calling it as a statement and ignoring the outcome, is a compile-time error, so an error is never ignored by accident.

```sh
rux run
```

```text
12 / 4 = 3
12 / 0 fails: no dividing by zero
13 / 4 fails: 1 left over
```

Read the lesson: https://rux-lang.dev/docs/learn/fallible
