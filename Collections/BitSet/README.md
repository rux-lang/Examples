# BitSet

Keep two people's free days of a month in `BitSet`s, one bit per day, then find the days both,
either or only one of them is free with word-at-a-time union, intersection and difference.

**You'll need:** [Bitwise](https://rux-lang.dev/docs/learn/bitwise), [Move](https://rux-lang.dev/docs/learn/move), [HashSet](https://rux-lang.dev/docs/learn/hash-set)

```sh
rux run
```

```text
ann        2 3 9 10 16 23 30   (7 days)
ben        3 4 10 17 23 24   (6 days)
ann free on the 9th? true  on the 99th? false
both       3 10 23   (3 days)
either     2 3 4 9 10 16 17 23 24 30   (10 days)
ann only   2 9 16 30   (4 days)
ann now    2 3 9 16 23 30   (6 days)
ben now    3 4 10 18 23 24   (6 days)
ann spans 31 bits
```

Read the lesson: https://rux-lang.dev/docs/learn/bit-set
