# Variadic

Write a function that takes any number of arguments with `args: int32...`, and spread a slice back
into arguments with `args...`.

**You'll need:** [Slice](https://rux-lang.dev/docs/learn/slice), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
Sum(1, 2, 3)            6
Sum(42)                 42
Sum()                   0
Largest(4, 9, 2)        9
Largest(7)              7
Average(2, 4, 9)        5
Average(scores[..]...)  85
```

Read the lesson: https://rux-lang.dev/docs/learn/variadic
