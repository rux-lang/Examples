# Calculator

Evaluate a list of sums and two tapes of key presses, where every way a sum can fail is a case of an error variant.

**You'll need:** Parts 1–9 — this project is the checkpoint for Errors, and leans on [Fail](https://rux-lang.dev/docs/learn/fail), [Propagate](https://rux-lang.dev/docs/learn/propagate), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback) and [ErrorVariant](https://rux-lang.dev/docs/learn/error-variant).

```sh
rux run
```

```text
12 + 30 = 42
7 * 6 = 42
17 % 5 = 2
7 / 0 = error: division by zero
7 % 0 = error: division by zero
2 ^ 8 = error: '^' is not an operator
2147483647 + 1 = error: 2147483648 does not fit in an int32
-2147483648 / -1 = error: 2147483648 does not fit in an int32
65536 * 65536 = error: 4294967296 does not fit in an int32

0 + 10 * 7 - 6 / 8 = 8
0 + 10 / 0 * 7 x 2 - 6 = error: division by zero
skipping the bad keys instead: 64
```

Read the project: https://rux-lang.dev/docs/learn/calculator
