# WrappingArithmetic

Choose what overflow produces: `AddWrapping` and friends wrap around on purpose, `AddSaturating`
and friends stop at the limit.

**You'll need:** [CheckedArithmetic](https://rux-lang.dev/docs/learn/checked-arithmetic), [StringLiteral](https://rux-lang.dev/docs/learn/string-literal)

```sh
rux run
```

```text
wrapping     250 + 10 = 4
wrapping     5 - 10   = 251
wrapping     200 * 2  = 144
saturating   250 + 10 = 255
saturating   5 - 10   = 0
saturating   200 * 2  = 255

int8  -100 - 100  wraps to 56, saturates at -128
int8   100 + 100  wraps to -56, saturates at 127

hash of Hello, World!  1494227876
```

Read the lesson: https://rux-lang.dev/docs/learn/wrapping-arithmetic
