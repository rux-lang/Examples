# Thread

Start threads with `Spawn`, which moves a function's context to a new thread, and collect each
result with `Join` on its `JoinHandle<R>`; detach a thread you will not wait for, and ask how many
can run at once.

**You'll need:** [Struct](https://rux-lang.dev/docs/learn/struct), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match), [Outcome](https://rux-lang.dev/docs/learn/outcome), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [Move](https://rux-lang.dev/docs/learn/move)

```sh
rux run
```

```text
thread 1 summed        31250125000
thread 2 summed        93750125000
thread 3 summed       156250125000
thread 4 summed       218750125000
total                 500000500000
joinable after join   false
a different id        true
joinable after detach false
processors            16
```

Every line is the same on each run except the last, which is the number of processors on the machine
running it.

Read the lesson: https://rux-lang.dev/docs/learn/thread
