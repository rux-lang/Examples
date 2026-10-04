# FloatSpecial

See where infinity and NaN come from, why `NaN == NaN` is `false`, and how to test for them with
`IsNaN` and `IsInfinite`.

**You'll need:** [Float](https://rux-lang.dev/docs/learn/float), [Comparison](https://rux-lang.dev/docs/learn/comparison), [NumberLimit](https://rux-lang.dev/docs/learn/number-limit)

```sh
rux run
```

```text
1 / 0        Inf
-1 / 0       -Inf
0 / 0        NaN
Max * 2      Inf
Inf - Inf    NaN
Inf > Max    true
Inf == Inf   true
NaN == NaN   false
NaN != NaN   true
NaN < 1      false
NaN > 1      false
IsNaN        true
IsInfinite   true
IsFinite     true
-0 == 0      true
1 / -0       -Inf
```

Read the lesson: https://rux-lang.dev/docs/learn/float-special
