# CInterop

Call the C runtime through the `C` package. The program uses C's own types, turns an opaque pointer into a typed one, reads a C struct, makes a variadic call and checks every result for failure.

> **Runs on:** Windows, Linux, macOS and FreeBSD. The `C` package picks each system's C runtime.

**You'll need:** [Extern](https://rux-lang.dev/docs/learn/extern), [PointerSlice](https://rux-lang.dev/docs/learn/pointer-slice), [Layout](https://rux-lang.dev/docs/learn/layout), [Defer](https://rux-lang.dev/docs/learn/defer)

```sh
rux run
```

```text
spider has 8 legs and weighs 0.5 g (34 bytes)
1000000000 seconds after 1970 began was 2001-9-9, 1:46:40 UTC
```

Read the lesson: https://rux-lang.dev/docs/learn/c-interop
