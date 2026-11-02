# ErrorSum

Let one function throw either of two error types, `throws DigitError | RangeError`, and tell them apart with typed patterns in `catch`.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Propagate](https://rux-lang.dev/docs/learn/propagate)

`ParsePercent` passes a `DigitError` from `ParseNumber` on with plain `try` — it widens into the sum — and throws a `RangeError` of its own. `Show` handles both in one `try { ... } catch { ... }` block whose arms `e: DigitError` and `e: RangeError` each match one member; leave one out and the compiler names the missing member.

```sh
rux run
```

```text
75    -> 75%
7%    -> no digit at position 1
250   -> 250 is over 100
```

Read the lesson: https://rux-lang.dev/docs/learn/error-sum
