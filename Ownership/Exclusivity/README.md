# Exclusivity

Hold one `&var` borrow of a value at a time, and see that a borrow ends at its last use.

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
