# NestedFallible

Keep two meanings apart by nesting: `-> int? throws E` for "the next value, the end, or an error", and `-> Result<int, E1> throws E2` for an answer that can itself be a failure.

**You'll need:** [NestedOptional](https://rux-lang.dev/docs/learn/nested-optional), [Outcome](https://rux-lang.dev/docs/learn/outcome)

`Reading` returns an optional and can throw: `catch` handles the broken sensor (its arm leaves the loop with `break`), and a `match` on the optional tells a value from the end. `SelfTest` returns Core's `Result<int, RangeError>` — an outcome handed back as data — and can throw a `SensorError` when there is no answer at all. The levels never merge: `catch` sees only the thrown error, and the `Failure` inside the returned `Result` is reached with an ordinary `match`.

```sh
rux run
```

```text
sensor 1 log: 20 21 22 (end)
sensor 2 log: 20 21 (sensor 2 broke)
sensor 1 test: reads 21
sensor 2 test: 999 is out of range
sensor 3 test: no answer
```

Read the lesson: https://rux-lang.dev/docs/learn/nested-fallible
