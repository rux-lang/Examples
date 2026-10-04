# Asm

Write a function body in x86-64 assembly with `asm func`, and pin the calling convention it reads its arguments from with `#Abi`.

> **x86-64 only.** It runs on Windows, Linux and macOS on x86-64. On any other architecture the
> build stops with a `#Error`. The AsmArm lesson is the AArch64 version.

**You'll need:** [Abi](https://rux-lang.dev/docs/learn/abi), [When](https://rux-lang.dev/docs/learn/when), [Target](https://rux-lang.dev/docs/learn/target), [CompileError](https://rux-lang.dev/docs/learn/compile-error)

```sh
rux run
```

```text
AddWin64(20, 22)  42
AddSysV(20, 22)   42
SumTo(10)         55
SumTo(100)        5050
```

Read the lesson: https://rux-lang.dev/docs/learn/asm
