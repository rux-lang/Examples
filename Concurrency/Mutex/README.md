# Mutex

Guard two balances that must change together with a `Mutex<T>`: each thread locks it, changes the
value through the `MutexGuard<T>` it gets back, and the lock is released when the guard is dropped.

**You'll need:** [Destructor](https://rux-lang.dev/docs/learn/destructor), [Pointer](https://rux-lang.dev/docs/learn/pointer), [Thread](https://rux-lang.dev/docs/learn/thread), [Atomic](https://rux-lang.dev/docs/learn/atomic)

```sh
rux run
```

```text
checking 10000  savings 0  total 10000  transfers 0
checking 8000  savings 2000  total 10000  transfers 4000
try while held:     false
try after unlock:   true
```

Read the lesson: https://rux-lang.dev/docs/learn/mutex
