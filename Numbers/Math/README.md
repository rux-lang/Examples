# Math

Tour the `Math` package — roots, powers, logarithms, trigonometry and rounding — with the
domain of each and the limits of floating-point answers.

**You'll need:** [Float](https://rux-lang.dev/docs/learn/float), [FloatSpecial](https://rux-lang.dev/docs/learn/float-special), [Function](https://rux-lang.dev/docs/learn/function)

```sh
rux run
```

```text
Sqrt(2)        1.4142135623730951
Cbrt(-8)       -2.0
Pow(2, 10)     1024.0
Sqrt(-1)       NaN

Log(Exp(1))    1.0
Log2(1024)     10.0
Log10(0.001)   -3.0
Log(0)         -Inf

Sin(30 deg)    0.49999999999999994
Cos(60 deg)    0.5000000000000001
Sin(Pi)        1.2246467991473532e-16
Sin(Pi) is 0?  true

Floor(-2.5)    -3.0   towards minus infinity
Ceil(-2.5)     -2.0   towards plus infinity
Trunc(-2.5)    -2.0   towards zero
Round(-2.5)    -3.0   to nearest, halves away from zero
```

Read the lesson: https://rux-lang.dev/docs/learn/math
