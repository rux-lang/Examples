# ErrorSum

Let one function fail with either of two error types, `! (DigitError | RangeError)`, and tell
them apart with typed patterns.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Propagate](https://rux-lang.dev/docs/learn/propagate)

```sh
rux run
```

```text
75    -> 75%
7%    -> no digit at position 1
250   -> 250 is over 100
```

Read the lesson: https://rux-lang.dev/docs/learn/error-sum
