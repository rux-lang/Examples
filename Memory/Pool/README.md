# Pool

Reuse fixed-size blocks from a `Pool`, where a released block goes straight back to the next request of its size.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [Arena](https://rux-lang.dev/docs/learn/arena), [AbsenceToError](https://rux-lang.dev/docs/learn/absence-to-error), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main)

```sh
rux run
```

```text
block sizes: 16 32 64 128 256
a 20-byte request uses a 32-byte block
three out:   3 live blocks, 1 chunk
one back:    2 live blocks
fourth reuses the second's block: true
all back:    0 live blocks, 1 chunk
```

Read the lesson: https://rux-lang.dev/docs/learn/pool
