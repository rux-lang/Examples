# DeferReturn

See that `return` keeps its value before deferred code runs, use that to hand out a value and then advance, and see deferred statements and destructors run as one sequence, innermost and last declared first.

**You'll need:** [Defer](https://rux-lang.dev/docs/learn/defer), [MutatingMethod](https://rux-lang.dev/docs/learn/mutating-method), [Destructor](https://rux-lang.dev/docs/learn/destructor)

```sh
rux run
```

```text
countdown:
    deferred code sees remaining = 0
    returned 3
tickets:
    took 1 and 2, now showing 3
closing:
    last customer served
    count the till
    switch the lights off
    take the sign in
    returned 2
```

Read the lesson: https://rux-lang.dev/docs/learn/defer-return
