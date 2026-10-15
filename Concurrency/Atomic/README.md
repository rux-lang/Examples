# Atomic

Count across threads without a lock: four threads share `Atomic<uint64>` values, add to one with
`FetchAdd`, keep a running maximum in the other with a `CompareExchange` retry loop, and pick a
memory order.

**You'll need:** [GenericType](https://rux-lang.dev/docs/learn/generic-type), [Pointer](https://rux-lang.dev/docs/learn/pointer), [Thread](https://rux-lang.dev/docs/learn/thread)

```sh
rux run
```

```text
numbers checked  100000
longest chain    350 steps
exchange         10 -> 20
not replaced     found 20
```

Read the lesson: https://rux-lang.dev/docs/learn/atomic
