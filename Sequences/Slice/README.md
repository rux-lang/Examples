# Slice

Pass arrays of any length to one function through a read-only view, `int32[..]`, and take views of
part of an array with ranges.

**You'll need:** [Array](https://rux-lang.dev/docs/learn/array), [Function](https://rux-lang.dev/docs/learn/function)

```sh
rux run
```

```text
numbers        150
more           6
numbers[1..4]  90 over 3 elements
numbers[1..=4] 140
numbers[2..]   120
numbers[..2]   30
middle[1..]    70, starting at 30
"hello" is 5 bytes
```

Read the lesson: https://rux-lang.dev/docs/learn/slice
