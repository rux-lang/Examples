# SmallVector

Collect the prime factors of numbers in a `SmallVector<uint64>`, which keeps up to eight of them
inside itself without allocating, and watch the longer lists move to the heap.

**You'll need:** [Vector](https://rux-lang.dev/docs/learn/vector), [Move](https://rux-lang.dev/docs/learn/move), [OutParameter](https://rux-lang.dev/docs/learn/out-parameter)

```sh
rux run
```

```text
inline room: 8 uint64 values
      97 = 97   count 1, inline, capacity 8
     360 = 2 2 2 3 3 5   count 6, inline, capacity 8
 9699690 = 2 3 5 7 11 13 17 19   count 8, inline, capacity 8
    1024 = 2 2 2 2 2 2 2 2 2 2   count 10, on the heap, capacity 16
 3072000 = 2 2 2 2 2 2 2 2 2 2 2 2 2 3 5 5 5   count 17, on the heap, capacity 32
popped 2, 9 left
after truncating: 2 left, inline: false
```

Read the lesson: https://rux-lang.dev/docs/learn/small-vector
