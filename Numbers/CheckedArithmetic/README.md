# CheckedArithmetic

Detect overflow with `CheckedAdd`, `CheckedSub` and `CheckedMul`, which answer with an optional that is `none` when the result does not fit.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Presence](https://rux-lang.dev/docs/learn/presence), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [NumberLimit](https://rux-lang.dev/docs/learn/number-limit)

```sh
rux run
```

```text
250 + 5    result 255
255 + 1    overflow
3 - 5      overflow
Min - 1    overflow
area       2073600
area       too large
```

Read the lesson: https://rux-lang.dev/docs/learn/checked-arithmetic
