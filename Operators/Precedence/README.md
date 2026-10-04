# Precedence

Predict which operator applies first, how same-rank operators group left to right,
and when to add parentheses.

**You'll need:** [Arithmetic](https://rux-lang.dev/docs/learn/arithmetic), [Comparison](https://rux-lang.dev/docs/learn/comparison), [Logical](https://rux-lang.dev/docs/learn/logical), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
2 + 3 * 4    = 14
(2 + 3) * 4  = 20
7 + 10 % 4   = 9
100 / 10 / 5   = 2
100 / (10 / 5) = 50
10 - 3 - 2     = 5
(a / b) as float64            = 3.0
a as float64 / b as float64   = 3.4
age >= 18 && age < 65   is true
true || false && false    is true
(true || false) && false  is false
!ready && busy    is false
!(ready && busy)  is true
```

Read the lesson: https://rux-lang.dev/docs/learn/precedence
