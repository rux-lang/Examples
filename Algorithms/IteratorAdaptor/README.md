# IteratorAdaptor

Chain Core's lazy adaptors — `Map`, `Filter`, `Skip`, `Take`, `Enumerate`, `Zip` and `Chain` — over
slices and over an endless iterator, and see that each item is computed only when it is asked for.

**You'll need:** [Iterator](https://rux-lang.dev/docs/learn/iterator), [Iterable](https://rux-lang.dev/docs/learn/iterable), [Callback](https://rux-lang.dev/docs/learn/callback)

```sh
rux run
```

```text
curved:    77 50 95 43 71 54
passed:    77 50 95 71 54
page 2:    90 38
failed at: 1 3 5
ada  72
ben  45
cai  90
all:       72 45 90 38 66 49 81 57
lazy:      (asked: 1) (asked: 2) -> 4 (asked: 3) (asked: 4) -> 16 (asked: 5) (asked: 6) -> 36
```

Read the lesson: https://rux-lang.dev/docs/learn/iterator-adaptor
