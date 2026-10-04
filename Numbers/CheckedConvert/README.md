# CheckedConvert

Convert between number types with `ConvertChecked`, which reports when the value did not survive,
and clamp with `ConvertSaturating`.

**You'll need:** [Convert](https://rux-lang.dev/docs/learn/convert), [CheckedArithmetic](https://rux-lang.dev/docs/learn/checked-arithmetic), [Optional](https://rux-lang.dev/docs/learn/optional), [Presence](https://rux-lang.dev/docs/learn/presence)

```sh
rux run
```

```text
200  -> uint8  lost false  value 200
300  -> uint8  lost true   value 44
-1   -> uint8  lost true   value 255
42.0 -> int32  lost false  value 42
42.7 -> int32  lost true   value 42
NaN  -> int32  lost true

300 saturated  255
-1 saturated   0

ToByte(99)     99
ToByte(999)    does not fit
```

Read the lesson: https://rux-lang.dev/docs/learn/checked-convert
