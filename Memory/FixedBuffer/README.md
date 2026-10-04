# FixedBuffer

Allocate from storage you already own with `FixedBuffer`, which refuses with `OutOfMemory` once the storage is full.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [Arena](https://rux-lang.dev/docs/learn/arena), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Loop](https://rux-lang.dev/docs/learn/loop)

```sh
rux run
```

```text
point 1 at (1, 1), 48 bytes left
point 2 at (2, 4), 32 bytes left
point 3 at (3, 9), 16 bytes left
point 4 at (4, 16), 0 bytes left
point 5 refused, out of memory: true
after reset, 64 bytes left
starts at storage[0]: true
```

Read the lesson: https://rux-lang.dev/docs/learn/fixed-buffer
