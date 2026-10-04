# Extern

Call a function from a system library by declaring it with `extern` and naming its library with `#Link`.

> **Windows only.** The functions come from `Kernel32.dll`. On any other system the build stops
> with a `#Error` that says so.

**You'll need:** [Pointer](https://rux-lang.dev/docs/learn/pointer), [Target](https://rux-lang.dev/docs/learn/target), [CompileError](https://rux-lang.dev/docs/learn/compile-error)

```sh
rux run
```

```text
process id   6640
Rux length   6
lstrlenA     6
```

The process id is different on every run.

Read the lesson: https://rux-lang.dev/docs/learn/extern
