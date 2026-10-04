# StringBuilder

Build text a piece at a time in one growing buffer with `StringBuilder`, then hand it over as a
`String` with `IntoString`.

**You'll need:** [String](https://rux-lang.dev/docs/learn/string), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference), [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Propagate](https://rux-lang.dev/docs/learn/propagate)

```sh
rux run
```

```text
added red, 3 bytes so far
added orange, 11 bytes so far
added yellow, 19 bytes so far
added green, 26 bytes so far
added blue, 35 bytes so far
view    red, orange, yellow, green and blue ✓
string  red, orange, yellow, green and blue ✓
builder now holds 0 bytes
```

Read the lesson: https://rux-lang.dev/docs/learn/string-builder
