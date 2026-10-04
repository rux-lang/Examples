# Intrinsic

See that `int8`, `#target` and `Assert` reach a program through `intrinsic` declarations, by taking them from a small provider package of your own instead of `Core`.

**You'll need:** [Dependency](https://rux-lang.dev/docs/learn/dependency), [Target](https://rux-lang.dev/docs/learn/target), [Assert](https://rux-lang.dev/docs/learn/assert)

```sh
rux run
```

```text
int8 runs from -128 to 127
float64 can hold Inf
Pointers on this target are 64 bits wide
Level 100 passed the check
```

The provider is the companion package in `Basis/`.

Read the lesson: https://rux-lang.dev/docs/learn/intrinsic
