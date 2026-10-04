# CheckedArithmetic

Detect overflow with `AddChecked`, `SubChecked` and `MulChecked`, which return `true` on overflow
and the result through an out-parameter.

**You'll need:** [OutParameter](https://rux-lang.dev/docs/learn/out-parameter), [Optional](https://rux-lang.dev/docs/learn/optional), [Presence](https://rux-lang.dev/docs/learn/presence), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [NumberLimit](https://rux-lang.dev/docs/learn/number-limit)

```sh
rux run
```

```text
250 + 5    overflow false  result 255
255 + 1    overflow true   result 0
3 - 5      overflow true   result 4294967294
Min - 1    overflow true   result 2147483647
area       2073600
area       too large
```

Read the lesson: https://rux-lang.dev/docs/learn/checked-arithmetic
