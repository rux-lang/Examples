# RawMemory

Allocate a block with `Alloc`, clear it with `Zero` and give it back with `Free`, checking for `null` first.

**You'll need:** [Pointer](https://rux-lang.dev/docs/learn/pointer), [Defer](https://rux-lang.dev/docs/learn/defer), [For](https://rux-lang.dev/docs/learn/for)

```sh
rux run
```

```text
asking for 8 elements, 64 bytes
after Zero: 0 0 0 0 0 0 0 0
squares:    0 1 4 9 16 25 36 49
total:      140
```

Read the lesson: https://rux-lang.dev/docs/learn/raw-memory
