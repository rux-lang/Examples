# Abi

Give a foreign function a Rux name of your own with `#Link`'s second argument, and state a calling convention with `#Abi`.

> **Runs on:** Windows, Linux, macOS and FreeBSD. The program calls each system's C runtime.

**You'll need:** [Extern](https://rux-lang.dev/docs/learn/extern), [CInterop](https://rux-lang.dev/docs/learn/c-interop), [Target](https://rux-lang.dev/docs/learn/target)

```sh
rux run
```

```text
AbsoluteValue(-7)    7
CStringLength("abi") 3
sorted by C          9 7 5 3 1
```

Read the lesson: https://rux-lang.dev/docs/learn/abi
