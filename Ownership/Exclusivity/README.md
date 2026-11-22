# Exclusivity

Write a loan where it starts, `&var x` to write and `&x` to read, hold one `&var` loan of a value at a time, and see that a loan ends at its last use.

**You'll need:** [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference), [Reference](https://rux-lang.dev/docs/learn/reference)

```sh
rux run
```

```text
after merge: Alice 120, Bob 0
richer of Alice and Alice: Alice
after spending: Alice 70
```

Read the lesson: https://rux-lang.dev/docs/learn/exclusivity
