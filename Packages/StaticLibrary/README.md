# StaticLibrary

Compile a package ahead of time into a native archive, where each `pub` function becomes a global symbol.

**You'll need:** [Package](https://rux-lang.dev/docs/learn/package), [SourceLibrary](https://rux-lang.dev/docs/learn/source-library)

A library has no `Main`, so this lesson is built rather than run. The timings vary from build to build:

```sh
rux build
```

```text
Compiling StaticLibrary v0.1.0 (Debug, Windows x86-64)
Built StaticLibrary (Debug, Windows x86-64) in 1 ms
  Output: Bin\Debug\Windows\x86-64\StaticLibrary.lib
  1 file | 28 LOC | 61 tokens | 18.6K LOC/s | StaticLibrary.lib 1 KB
```

Any symbol lister shows what the archive holds; with LLVM installed, `llvm-nm Bin/Debug/Windows/x86-64/StaticLibrary.lib` prints `T` for the global `Area` and `Perimeter` and `t` for the local `Double`.

Read the lesson: https://rux-lang.dev/docs/learn/static-library
