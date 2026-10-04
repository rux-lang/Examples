# Integer

Meet the integer types — signed and unsigned, from 8 to 512 bits, plus the machine-sized `int`
and `uint` — and print the range each one holds.

**You'll need:** [Variable](https://rux-lang.dev/docs/learn/variable)

```sh
rux run
```

```text
int8     -128 to 127
int16    -32768 to 32767
int32    -2147483648 to 2147483647
int64    -9223372036854775808 to 9223372036854775807
uint8    0 to 255
uint16   0 to 65535
uint32   0 to 4294967295
uint64   0 to 18446744073709551615
int128   max 170141183460469231731687303715884105727
uint512  max 13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095
int      64 bits
uint     64 bits
byte     200
```

The `int` and `uint` lines show 64 bits on a 64-bit target.

Read the lesson: https://rux-lang.dev/docs/learn/integer
