# Layout

Measure a type's size and alignment with `sizeof` and `alignof`, and see the padding that field order puts inside a struct.

**You'll need:** [Struct](https://rux-lang.dev/docs/learn/struct), [Pointer](https://rux-lang.dev/docs/learn/pointer), [PointerArithmetic](https://rux-lang.dev/docs/learn/pointer-arithmetic)

```sh
rux run
```

```text
type    size  align
uint8   1     1
int32   4     4
int64   8     8
int     8     8
Loose   24    8
Tight   16    8
Loose: flag at 0, total at 8, mark at 16
Tight: total at 0, flag at 8, mark at 9
Loose[4] takes 96 bytes, Tight[4] takes 64
```

This output is from a 64-bit build; sizes and alignments depend on the target.

Read the lesson: https://rux-lang.dev/docs/learn/layout
