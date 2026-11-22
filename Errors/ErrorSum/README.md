# ErrorSum

Let one function fail with either of two error types, `-> int ! DigitError | RangeError`, and tell them apart with typed patterns.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Propagate](https://rux-lang.dev/docs/learn/propagate)

`ParsePercent` passes a `DigitError` from `ParseNumber` on with `!` — it widens into the sum — and throws a `RangeError` of its own. `Show` matches the outcome: `percent: int` takes the success, and `e: DigitError` and `e: RangeError` each match one member of the error; leave one out and the compiler names the missing member.

```sh
rux run
```

```text
75    -> 75%
7%    -> no digit at position 1
250   -> 250 is over 100
```

Read the lesson: https://rux-lang.dev/docs/learn/error-sum
