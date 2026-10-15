# Arc

Share one value between threads with `Arc<T>`, a counted handle whose copies may be made and dropped
on any thread, and change what must change inside it through an `Atomic<T>`.

**You'll need:** [Rc](https://rux-lang.dev/docs/learn/rc), [Thread](https://rux-lang.dev/docs/learn/thread), [Atomic](https://rux-lang.dev/docs/learn/atomic)

```sh
rux run
```

```text
handles before  1
till 1 took     270
till 2 took     1249
till 3 took     1888
items sold      15
handles after   1
same shop       true
handles now     2
first price     110
```

Read the lesson: https://rux-lang.dev/docs/learn/arc
