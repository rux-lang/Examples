# Fail

Leave a function through its `throws` channel with `throw`, carrying an error that says what went wrong.

**You'll need:** [Fallible](https://rux-lang.dev/docs/learn/fallible), [Struct](https://rux-lang.dev/docs/learn/struct)

`Withdraw` declares `-> int throws ShortOfFunds`. `return value;` is the success; `throw ShortOfFunds { ... };` leaves at once with the error. `Report` marks the call with `try` and handles the error in a `catch` arm that prints the shortfall and returns. Throwing a value of another type, or throwing from a function without `throws`, is a compile-time error.

```sh
rux run
```

```text
take 30 from 100: 70 left
take 100 from 100: 0 left
take 130 from 100: refused, 30 short
take 5 from 0: refused, 5 short
```

Read the lesson: https://rux-lang.dev/docs/learn/fail
