# Outcome

Keep an outcome that must outlive its call in Core's `Result<T, E>`, then store, pass, build and match it through `.Success` and `.Failure`.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [MatchExpression](https://rux-lang.dev/docs/learn/match-expression)

`Share` declares `-> int throws NobodyToShare`. `Keep` turns one call into a stored value with `try .Success(Share(slices, people)) catch { e => .Failure(e) }`. `Result` is an ordinary variant, so it is passed to `Describe`, built by hand with `.Success(2)` and `.Failure(...)`, and taken apart with `match`, which must cover both cases.

```sh
rux run
```

```text
3 slices each
12 slices and nobody to eat them
not even one slice each
2 slices each
8 slices and nobody to eat them
eaten at the party: 12
```

Read the lesson: https://rux-lang.dev/docs/learn/outcome
