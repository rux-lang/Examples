# PriorityQueue

Serve support tickets most urgent first with a `PriorityQueue<T>`, which always hands out its
largest element, and turn it into an earliest-first queue of timers by reversing the element type's
`<`.

**You'll need:** [OperatorOverload](https://rux-lang.dev/docs/learn/operator-overload), [CoalesceExit](https://rux-lang.dev/docs/learn/coalesce-exit), [Vector](https://rux-lang.dev/docs/learn/vector)

```sh
rux run
```

```text
next up: checkout is down (5 waiting)
  priority 3  #2  checkout is down
  priority 3  #4  site is slow
  priority 2  #3  password reset email is late
  priority 1  #1  typo on the pricing page
  priority 1  #5  dark mode request
empty: true
at  5s  blink the cursor
at 12s  refresh the feed
at 30s  autosave
at 60s  check mail
```

Read the lesson: https://rux-lang.dev/docs/learn/priority-queue
