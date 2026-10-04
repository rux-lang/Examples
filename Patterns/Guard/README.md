# Guard

Add a condition to a match arm with `pattern if condition =>`, and fall through to the next arm when it is false.

**You'll need:** [VariantMatch](https://rux-lang.dev/docs/learn/variant-match), [MatchExpression](https://rux-lang.dev/docs/learn/match-expression), [Comparison](https://rux-lang.dev/docs/learn/comparison)

```sh
rux run
```

```text
deposit
deposit, held for a check
withdrawal
withdrawal, over the daily limit
fee
0 is zero, 14 is even, -7 is odd
```

Read the lesson: https://rux-lang.dev/docs/learn/guard
