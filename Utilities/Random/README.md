# Random

Build a `Pcg64Dxsm` generator from a fixed seed and see that the same seed always replays the
same numbers.

**You'll need:** [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference), [Copy](https://rux-lang.dev/docs/learn/copy), [Generic](https://rux-lang.dev/docs/learn/generic), [Format](https://rux-lang.dev/docs/learn/format)

```sh
rux run
```

```text
seed 2026       23 73 75 87 37 28
seed 2026 again 23 73 75 87 37 28
seed 2027       73  1 34  5  0 38
2026 continued  67 36 72 16 94 29
2026 continued  16 12 33 48  2 29
its copy        16 12 33 48  2 29
```

Read the lesson: https://rux-lang.dev/docs/learn/random
