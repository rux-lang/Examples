# AsmArm

Write the AArch64 version of an `asm func`, and use `when #target.arch` to pick the body that matches the machine being built for.

> **The assembly runs only on AArch64**: Apple silicon Macs, Windows on ARM and ARM Linux. The
> lesson still builds and runs on x86-64, but there `when` leaves the AArch64 functions out
> and the program prints a note instead.

**You'll need:** [Asm](https://rux-lang.dev/docs/learn/asm), [When](https://rux-lang.dev/docs/learn/when), [Target](https://rux-lang.dev/docs/learn/target)

```sh
rux run
```

On an AArch64 machine:

```text
Add(20, 22)  42
SumTo(100)   5050
Max(4, 9)    9
```

On an x86-64 machine:

```text
This lesson's assembly is for AArch64, and this machine is not one.
The AArch64 functions were left out of this build, so none of them ran.
```

Read the lesson: https://rux-lang.dev/docs/learn/asm-arm
