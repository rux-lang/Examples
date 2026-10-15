# WaitGroup

Wait for a group of detached workers with a `WaitGroup` — `Add` before they start, `Done` as each
one's last step, `Wait` in `Main` — and collect their answers in numbered slots so the output keeps
its order.

**You'll need:** [Move](https://rux-lang.dev/docs/learn/move), [Thread](https://rux-lang.dev/docs/learn/thread), [Mutex](https://rux-lang.dev/docs/learn/mutex)

```sh
rux run
```

```text
     1 to  25000: 2762 primes
 25001 to  50000: 2371 primes
 50001 to  75000: 2260 primes
 75001 to 100000: 2199 primes
all 4 workers done: 9592 primes up to 100000
```

Read the lesson: https://rux-lang.dev/docs/learn/wait-group
