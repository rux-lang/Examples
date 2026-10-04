# TreeMap

Insert keys into a `TreeMap<K, V>` out of order, then walk them in order and ask for a range.

**You'll need:** [HashMap](https://rux-lang.dev/docs/learn/hash-map), [Comparable](https://rux-lang.dev/docs/learn/comparable), [Iterable](https://rux-lang.dev/docs/learn/iterable), [Presence](https://rux-lang.dev/docs/learn/presence)

```sh
rux run
```

```text
all readings
   3:00  7 C
   6:00  9 C
   9:00  14 C
  12:00  19 C
  15:00  21 C
  18:00  16 C
working hours, 9 to 17
   9:00  14 C
  12:00  19 C
  15:00  21 C
latest by 14:00 was 12:00, 19 C
first reading at 3:00
at 12:00 it was 19 C
any reading at 13:00? false
```

Read the lesson: https://rux-lang.dev/docs/learn/tree-map
