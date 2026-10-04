# Allocator

Allocate through the `Allocator` interface with `SystemAllocator`, handling an `AllocError` before the block is ever used.

**You'll need:** [PointerSlice](https://rux-lang.dev/docs/learn/pointer-slice), [InterfaceValue](https://rux-lang.dev/docs/learn/interface-value), [Propagate](https://rux-lang.dev/docs/learn/propagate), [AbsenceToError](https://rux-lang.dev/docs/learn/absence-to-error), [Defer](https://rux-lang.dev/docs/learn/defer)

```sh
rux run
```

```text
10 squares add up to 285
1000 squares add up to 332833500
1000000000000000000 squares: refused, the request cannot be served
```

The reason given on the last line comes from the operating system's answer, so it can differ between systems.

Read the lesson: https://rux-lang.dev/docs/learn/allocator
