# NumberLimit

Read a type's limits as associated constants — `Min`, `Max`, `Bits`, `Lowest`, `Epsilon` — and
ask `Core` for them inside a generic function.

**You'll need:** [Integer](https://rux-lang.dev/docs/learn/integer), [Float](https://rux-lang.dev/docs/learn/float), [Const](https://rux-lang.dev/docs/learn/const), [Generic](https://rux-lang.dev/docs/learn/generic)

```sh
rux run
```

```text
int16      -32768 to 32767, 16 bits in 2 bytes
port       up to 65535
uint8 span 255
float32    -3.4028235e+38 to 3.4028235e+38
float64    -1.7976931348623157e+308 to 1.7976931348623157e+308
smallest   2.2250738585072014e-308
epsilon    2.220446049250313e-16
1 + e      1.0000000000000002
1 + e / 2  1.0
fits int16 false
```

Read the lesson: https://rux-lang.dev/docs/learn/number-limit
