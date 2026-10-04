# FormatNumber

Spell numbers with a placeholder spec: digits after the point, rounding, scientific notation,
number bases, zero padding and an explicit sign.

**You'll need:** [Format](https://rux-lang.dev/docs/learn/format), [Float](https://rux-lang.dev/docs/learn/float), [Literal](https://rux-lang.dev/docs/learn/literal)

```sh
rux run
```

```text
pi          3.14159265358979
pi .2       3.14
pi .0       3
0.1         0.1
9.99 .1     10.0
halves .2   0.12 0.38
money       [   1234.50]
scientific  6.02214076e+23 2.5E-04 1.23e+03
bases       255 ff FF 377 11111111
prefixed    0xff 0o377 0b11111111
zeros       000042 -00042 0x00ff
signs       +7 -7 +0.2
```

Read the lesson: https://rux-lang.dev/docs/learn/format-number
