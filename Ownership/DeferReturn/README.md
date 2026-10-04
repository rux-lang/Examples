# DeferReturn

See that `return` keeps its value before deferred code runs, and use that to hand out a value and then advance.

**You'll need:** [Defer](https://rux-lang.dev/docs/learn/defer), [MutatingMethod](https://rux-lang.dev/docs/learn/mutating-method)

```sh
rux run
```

```text
countdown:
    deferred code sees remaining = 0
    returned 3
tickets:
    took 1 and 2, now showing 3
```

Read the lesson: https://rux-lang.dev/docs/learn/defer-return
