# Search

Find a value with a linear search: `IndexOf` returns a `uint?` that is `none` when the value is
absent, and `Contains` returns a `bool`.

**You'll need:** [Slice](https://rux-lang.dev/docs/learn/slice), [Presence](https://rux-lang.dev/docs/learn/presence), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

```sh
rux run
```

```text
1 first appears at 4
6 first appears at 2
7 was never rolled
6 last appears at 6
contains 5  true
contains 0  false
7 at 8 of 8
6 in the tail at 2
```

Read the lesson: https://rux-lang.dev/docs/learn/search
