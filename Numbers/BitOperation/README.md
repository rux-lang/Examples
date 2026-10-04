# BitOperation

Ask questions about bits with `CountOnes`, `LeadingZeros` and `TrailingZeros`, and turn them around
with `RotateLeft` and `RotateRight`.

**You'll need:** [Bitwise](https://rux-lang.dev/docs/learn/bitwise), [Shift](https://rux-lang.dev/docs/learn/shift)

```sh
rux run
```

```text
value          00101100  (44)
CountOnes      3
CountZeros     5
LeadingZeros   2
TrailingZeros  2

as uint32      LeadingZeros 26
bits needed    6
4096 is power  true
44 is power    false

pattern        10010110
<< 3           10110000
RotateLeft 3   10110100
RotateRight 3  11010010
ones survive   4 and 4
```

Read the lesson: https://rux-lang.dev/docs/learn/bit-operation
