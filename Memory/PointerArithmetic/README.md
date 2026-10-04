# PointerArithmetic

Move a pointer with `+` and `-`, which count whole elements rather than bytes, and walk an array up to an end pointer.

**You'll need:** [Pointer](https://rux-lang.dev/docs/learn/pointer), [RawMemory](https://rux-lang.dev/docs/learn/raw-memory), [Array](https://rux-lang.dev/docs/learn/array), [While](https://rux-lang.dev/docs/learn/while)

```sh
rux run
```

```text
+1 on *uint8 moves 1 byte
+1 on *int64 moves 8 bytes
+1 on *Pixel moves 12 bytes
*(c + 2) is 30, c[2] is 30
(x + 1).blue is 255
doubled: 20 40 60 80
counts[3] is now 80
```

Read the lesson: https://rux-lang.dev/docs/learn/pointer-arithmetic
