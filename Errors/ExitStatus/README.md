# ExitStatus

Keep `Main` as `func Main() -> int`, which cannot fail, and turn the error of a helper into its exit status with `Install() !! return 1;` or `return Run() !! 1;`.

**You'll need:** [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [Propagate](https://rux-lang.dev/docs/learn/propagate)

The result of `Main` is the process's exit status, and `Main` may not declare an error: `func Main() -> !SpaceError` is refused with "'Main' must be 'func Main() -> int', but it returns '!SpaceError'". The steps that can fail move into `Install`, declared `-> !SpaceError`, where each `Reserve(...)!` passes a `SpaceError` on. `Main` decides what a failure means with `Install() !! return 1;` and returns 0 otherwise; a helper that works out the status itself is handled in one line, `return Run() !! 1;`. Leaving with 1 is an ordinary `return`, so every `defer` and destructor on the way out runs. The error itself is not printed — print a message first if the user should see why.

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

Read the lesson: https://rux-lang.dev/docs/learn/exit-status
