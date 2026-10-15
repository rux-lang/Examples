# Complex

Do arithmetic on complex numbers with the Math package's `Complex` and its four operators, read
one as a length and an angle with `Abs` and `Arg`, build one with `FromPolar`, and solve a
quadratic whose roots are not real.

**You'll need:** [Math](https://rux-lang.dev/docs/learn/math), [OperatorOverload](https://rux-lang.dev/docs/learn/operator-overload), [FormatNumber](https://rux-lang.dev/docs/learn/format-number)

```sh
rux run
```

```text
a + b          4.000 + 2.000i
a * b          11.000 - 2.000i
a / b          -1.000 + 2.000i
conjugate a    3.000 - 4.000i
a scaled by 2  6.000 + 8.000i
magnitude      5.000
angle          53.130 degrees
a * i          -4.000 + 3.000i
turned polar   5.000, 143.130 degrees
polar 2, 60    1.000 + 1.732i
first root     -1.000 + 2.000i
second root    -1.000 - 2.000i
check          0.000 + 0.000i
e^(i pi)       -1.000 + 0.000i
imaginary part 1.2246467991473532e-16
```

Read the lesson: https://rux-lang.dev/docs/learn/complex
