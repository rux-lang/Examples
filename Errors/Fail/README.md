# Fail

Leave a function through its error side with `throw`, carrying an error that says what went wrong.

**You'll need:** [Fallible](https://rux-lang.dev/docs/learn/fallible), [Struct](https://rux-lang.dev/docs/learn/struct)

`Withdraw` declares `-> int ! ShortOfFunds`. `return value;` is the success; `throw ShortOfFunds { ... };` leaves at once with the error. `Report` writes `catch` after the call, and its arm, which sees only the error, prints the shortfall and returns; on success `left` is the plain `int`. Throwing a value of another type, or throwing from a function that cannot fail, is a compile-time error.

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
