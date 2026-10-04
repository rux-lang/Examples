# SharedLibrary

Build a library that programs load at run time, and see that only its `pub` functions are exported.

**You'll need:** [StaticLibrary](https://rux-lang.dev/docs/learn/static-library)

A library has no `Main`, so this lesson is built rather than run. The timings vary from build to build:

```sh
rux build
```

```text
Compiling SharedLibrary v0.1.0 (Debug, Windows x86-64)
Built SharedLibrary (Debug, Windows x86-64) in 1 ms
  Output: Bin\Debug\Windows\x86-64\SharedLibrary.dll
  1 file | 30 LOC | 61 tokens | 24.6K LOC/s | SharedLibrary.dll 2 KB
```

`SharedLibrary.lib`, the import library, is written beside the `.dll`. To see the export table, run `dumpbin /exports` from a Visual Studio prompt, or `llvm-readobj --coff-exports` with LLVM installed, on `Bin/Debug/Windows/x86-64/SharedLibrary.dll`. Both list `Area` and `Perimeter`, and not `Double`.

Read the lesson: https://rux-lang.dev/docs/learn/shared-library
