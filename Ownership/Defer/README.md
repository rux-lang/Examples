# Defer

Register cleanup with `defer` right where the work starts, and see it run in reverse order on every way out.

**You'll need:** [Method](https://rux-lang.dev/docs/learn/method), [Return](https://rux-lang.dev/docs/learn/return)

```sh
rux run
```

```text
fill 40:
    open supply
    open drain
    filling 40 litres
    close drain
    close supply
    filled: true
fill 500:
    open supply
    open drain
    500 litres is too much, stopping
    close drain
    close supply
    filled: false
```

Read the lesson: https://rux-lang.dev/docs/learn/defer
