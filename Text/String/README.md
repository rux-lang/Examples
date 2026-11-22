# String

Own text with `String`, which keeps its bytes in allocated memory, make one from bytes with `FromBytes`, which fails with a `TextError` for bytes that are not UTF-8, and copy it with `Clone`, since `=` gives a `String` away and never copies it.

**You'll need:** [StringView](https://rux-lang.dev/docs/learn/string-view), [ExitStatus](https://rux-lang.dev/docs/learn/exit-status), [Destructor](https://rux-lang.dev/docs/learn/destructor), [InterfaceValue](https://rux-lang.dev/docs/learn/interface-value)

```sh
rux run
```

```text
word   desserts, 8 bytes
word   reward
saved  desserts
view   desserts, 8 characters
```

Read the lesson: https://rux-lang.dev/docs/learn/string
