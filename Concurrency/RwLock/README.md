# RwLock

Let many threads read a value at once and one thread write it alone with an `RwLock<T>`, its
`ReadGuard<T>` and its `WriteGuard<T>`.

**You'll need:** [Mutex](https://rux-lang.dev/docs/learn/mutex)

```sh
rux run
```

```text
writer moved     500 items
reader 1 saw     2000 of 2000 totals right
reader 2 saw     2000 of 2000 totals right
reader 3 saw     2000 of 2000 totals right
north 500  south 500  (read twice: true)
```

Read the lesson: https://rux-lang.dev/docs/learn/rw-lock
