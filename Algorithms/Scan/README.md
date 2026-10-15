# Scan

Turn a week's sales into running totals and running bests with `PartialSum` and `InclusiveScan`,
record lengths into offsets with `ExclusiveScan`, fill a counting sequence with `Iota`, and find a
midpoint that cannot overflow with `Midpoint`.

**You'll need:** [Fold](https://rux-lang.dev/docs/learn/fold), [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice), [WrappingArithmetic](https://rux-lang.dev/docs/learn/wrapping-arithmetic), [Overload](https://rux-lang.dev/docs/learn/overload)

```sh
rux run
```

```text
day           1    2    3    4    5    6    7
sales        12   30    7   25   18   40    9
total        12   42   49   74   92  132  141
best         12   30   30   30   30   40   40
length       14    6   22   10
offset        0   14   20   42
fits in 3? false
(low + high) / 2  -97483648
Midpoint          2050000000
Midpoint(3, 8) 5
Midpoint(8, 3) 6
```

Read the lesson: https://rux-lang.dev/docs/learn/scan
