# NumericBound

Bound a type parameter by `Integer`, `SignedInteger` or `Float` from `Core::Arithmetic`, so the generic can do arithmetic on it — `func Sum<T: Integer>(values: T[..]) -> T` — and see a wrong type argument refused at the call.

**You'll need:** [GenericBound](https://rux-lang.dev/docs/learn/generic-bound), [GiveAway](https://rux-lang.dev/docs/learn/give-away), [Slice](https://rux-lang.dev/docs/learn/slice), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
sum of scores    50
sum of sizes     5632
range of scores  1 to 30
magnitude of -7  7
average          19.5
```

Read the lesson: https://rux-lang.dev/docs/learn/numeric-bound
