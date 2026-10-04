# Statistics

Summarise slices of numbers — count, extremes, mean, population and sample variance, and median —
including an even count with repeated values, a single value and no values at all.

**You'll need:** Parts 1–18 — this project is the checkpoint for Algorithms, and leans on [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice), [Sort](https://rux-lang.dev/docs/learn/sort), [MinMax](https://rux-lang.dev/docs/learn/min-max), [Fold](https://rux-lang.dev/docs/learn/fold) and [Math](https://rux-lang.dev/docs/learn/math).

```sh
rux run
```

```text
nine readings
  values     12.5 9.0 15.25 11.0 8.75 14.0 10.5 13.25 11.75
  count      9
  smallest   8.75
  largest    15.25
  mean       11.7778
  population variance 4.3117, deviation 2.0765
  sample     variance 4.8507, deviation 2.2024
  median     11.75 (the middle value)

six scores with repeats
  values     4.0 7.0 4.0 1.0 7.0 7.0
  count      6
  smallest   1.0
  largest    7.0
  mean       5.0000
  population variance 5.0000, deviation 2.2361
  sample     variance 6.0000, deviation 2.4495
  median     5.5 (between 4.0 and 7.0)

a single value
  values     42.0
  count      1
  smallest   42.0
  largest    42.0
  mean       42.0000
  population variance 0.0000, deviation 0.0000
  sample     variance undefined for one value
  median     42.0 (the middle value)

no values
  values    
  count      0
  smallest   none
  largest    none
  mean, variance and median need at least one value

```

Read the project: https://rux-lang.dev/docs/learn/statistics