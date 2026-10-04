# StringLiteral

See that a string literal is a read-only `char8[..]` slice: its length counts bytes, escapes
write awkward characters, and changing text means copying it first.

**You'll need:** [Character](https://rux-lang.dev/docs/learn/character), [For](https://rux-lang.dev/docs/learn/for), [Slice](https://rux-lang.dev/docs/learn/slice), [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice)

```sh
rux run
```

```text
hello has 5 bytes
first h, last o
word[1..4] is ell
quote     "to be"
backslash C:\Rux\Bin
tab       one	two
newline   first
          second
"\n" is 1 byte
€ is 3 bytes
hello became jello
```

Read the lesson: https://rux-lang.dev/docs/learn/string-literal
