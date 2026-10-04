# SumType

Store a value that is one of several types — `int32 | bool` — and see that a sum is a set of
types, where order and duplicates do not matter.

**You'll need:** [TypeAlias](https://rux-lang.dev/docs/learn/type-alias), [Variant](https://rux-lang.dev/docs/learn/variant), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum)

```sh
rux run
```

```text
limit == 250       true
repeated == limit  true
off == zero        false
single + 1         21
```

Read the lesson: https://rux-lang.dev/docs/learn/sum-type
