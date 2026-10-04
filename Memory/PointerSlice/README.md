# PointerSlice

Turn a pointer and a count into an ordinary slice with `p[..n]`, so raw storage works with `for` and slice parameters.

**You'll need:** [RawMemory](https://rux-lang.dev/docs/learn/raw-memory), [PointerArithmetic](https://rux-lang.dev/docs/learn/pointer-arithmetic), [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice)

```sh
rux run
```

```text
all:    10 20 30 40 50 60
length: 6
middle: 30 40
after:  10 20 0 40 50 60
```

Read the lesson: https://rux-lang.dev/docs/learn/pointer-slice
