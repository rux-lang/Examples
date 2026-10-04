# FallibleMain

Declare `func Main() -> ! E` so `?` works at the top level, and see that a failure ends the
program with exit status 1 without printing anything.

**You'll need:** [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Propagate](https://rux-lang.dev/docs/learn/propagate)

```sh
rux run
echo $LASTEXITCODE
```

The program fails on purpose, so it stops after the second line and exits with status 1:

```text
Installing the editor (40 MB of 100 MB free)
Installing the compiler (90 MB of 60 MB free)
1
```

Read the lesson: https://rux-lang.dev/docs/learn/fallible-main
