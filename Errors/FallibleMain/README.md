# FallibleMain

Declare `func Main() throws E` (or `func Main() -> int throws E`) so plain `try` works at the top level, and see that an error ends the program with exit status 1 without printing anything.

**You'll need:** [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Propagate](https://rux-lang.dev/docs/learn/propagate)

`Main` declares `throws SpaceError` and no result, so reaching its end is success and exits with status 0. Each `try Reserve(...)` passes a `SpaceError` straight out of `Main`; the second one does, so the program stops there with status 1 after running every `defer` and destructor on the way out. The error itself is not printed — print a message first if the user should see why.

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
