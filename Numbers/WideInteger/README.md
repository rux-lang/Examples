# WideInteger

Count past 64 bits with `int128`, `int256` and `int512` and their unsigned twins: wide literals,
silent widening, explicit narrowing, and the same wrap-around at the edges.

**You'll need:** [Integer](https://rux-lang.dev/docs/learn/integer), [Literal](https://rux-lang.dev/docs/learn/literal), [Convert](https://rux-lang.dev/docs/learn/convert), [For](https://rux-lang.dev/docs/learn/for)

```sh
rux run
```

```text
uint64 max   18446744073709551615
one more     18446744073709551616
avogadro     602214076000000000000000
mask is max  true
34!          295232799039604140847618609643520000000
2^200        1606938044258990275541962092341162602522202993782792835301376
widened      -42000000000000000000000
narrowed     3236255836649029632
int128 max   170141183460469231731687303715884105727
max + 1      -170141183460469231731687303715884105728
uint512 max  13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095
```

Read the lesson: https://rux-lang.dev/docs/learn/wide-integer
