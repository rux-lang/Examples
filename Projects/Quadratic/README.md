# Quadratic

Read three coefficients and solve a x² + b x + c = 0, telling apart two real roots, a repeated
root, a complex pair, a linear equation, an inconsistent one and an identity.

**You'll need:** Parts 1–14 — this project is the checkpoint for Text, and leans on [Input](https://rux-lang.dev/docs/learn/input), [Parse](https://rux-lang.dev/docs/learn/parse), [StringView](https://rux-lang.dev/docs/learn/string-view) and [ErrorVariant](https://rux-lang.dev/docs/learn/error-variant) — plus [FloatSpecial](https://rux-lang.dev/docs/learn/float-special) and [Math](https://rux-lang.dev/docs/learn/math) from Part 16.

```sh
rux run
```

A sample session, typing `1`, `-3` and `2`:

```text
Solving a x^2 + b x + c = 0
a = 1
b = -3
c = 2

two real roots: x1 = 1.0, x2 = 2.0
```

Piped input works too. The typed values are not echoed then, so the prompts run together:

```sh
"1", "2", "5" | rux run
"0", "0", "3" | rux run
"1", "Inf" | rux run
$null | rux run
```

```text
Solving a x^2 + b x + c = 0
a = b = c = 
complex roots: x = -1.0 + 2.0i and x = -1.0 - 2.0i
Solving a x^2 + b x + c = 0
a = b = c = 
inconsistent: 3.0 = 0 is never true, so there is no solution
Solving a x^2 + b x + c = 0
a = b = 
a coefficient must be finite: Inf, NaN and numbers past float64 are refused
Solving a x^2 + b x + c = 0
a = 
the input ended before all three coefficients were given
```

Unusable input, including input that ends early, exits with status 1.

Read the project: https://rux-lang.dev/docs/learn/quadratic
