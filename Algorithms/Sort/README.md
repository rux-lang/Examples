# Sort

Sort a slice in place with `Sort`, `SortDescending` and `SortBy`, through a
writable view `var T[..]`.

**You'll need:** [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice), [Callback](https://rux-lang.dev/docs/learn/callback), [Comparable](https://rux-lang.dev/docs/learn/comparable)

```sh
rux run
```

```text
start        5 -8 3 -1 6 0 -4
sorted       -8 -4 -1 0 3 5 6
descending   6 5 3 0 -1 -4 -8
by magnitude 0 -1 3 -4 5 6 -8
middle only  9 1 3 5 7 8 6
```

Read the lesson: https://rux-lang.dev/docs/learn/sort
