# Circle

Read a radius and print the circle's circumference and area, telling apart the end of input, a
read error, text that is not a number, and a number that is not a valid radius.

**You'll need:** Parts 1–14 — this project is the checkpoint for Text, and leans on [Input](https://rux-lang.dev/docs/learn/input), [Parse](https://rux-lang.dev/docs/learn/parse), [StringView](https://rux-lang.dev/docs/learn/string-view), [ErrorVariant](https://rux-lang.dev/docs/learn/error-variant) and [Destructor](https://rux-lang.dev/docs/learn/destructor) — plus [FloatSpecial](https://rux-lang.dev/docs/learn/float-special) and [Math](https://rux-lang.dev/docs/learn/math) from Part 16.

```sh
rux run
```

A sample session, typing `2.5`:

```text
Circle radius: 2.5

Radius:        2.5
Circumference: 15.7080
Area:          19.6350
```

Piped input works too. The typed value is not echoed then, so each report follows the prompt
on a line of its own:

```sh
"-3" | rux run
"two" | rux run
$null | rux run
```

```text
Circle radius: 
A radius cannot be negative, and -3.0 is
Circle radius: 
That is not a number
Circle radius: 
The input ended before a radius was entered
```

`Inf`, `NaN` and numbers too large for a `float64` are refused as not finite. Every refusal
exits with status 1.

Read the project: https://rux-lang.dev/docs/learn/circle
