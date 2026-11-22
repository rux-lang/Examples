# Intrinsic

See that `int8::Max`, `#target` and `Assert` reach a program through an extension and `intrinsic` declarations, by binding a small provider package of your own with `Intrinsics` in `Rux.toml` instead of `Core`.

**You'll need:** [Dependency](https://rux-lang.dev/docs/learn/dependency), [Target](https://rux-lang.dev/docs/learn/target), [Assert](https://rux-lang.dev/docs/learn/assert), [ExitStatus](https://rux-lang.dev/docs/learn/exit-status)

Only one package in a build may declare intrinsics. This lesson binds `Basis` to that role, so `Core` and every package built on it, `Io` included, stay out of the build. The program therefore prints nothing and answers with its exit status, 0 when every check passes:

```sh
rux run
echo $LASTEXITCODE
```

```text
0
```

Raise `level` to 127 and the `Assert` from `Basis` stops the program:

```text
Assertion failed: the level must leave room to grow
  at Main (Src/Main.rux:43:5)
```

The provider is the companion package in `Basis/`.

Read the lesson: https://rux-lang.dev/docs/learn/intrinsic
