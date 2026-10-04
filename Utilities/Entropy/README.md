# Entropy

Ask the operating system for unpredictable numbers with `NextUint64` and `Fill`, which return
`! EntropyError`, and check every failure rather than replacing it with a fixed value.

**You'll need:** [Distribution](https://rux-lang.dev/docs/learn/distribution), [Catch](https://rux-lang.dev/docs/learn/catch), [Enum](https://rux-lang.dev/docs/learn/enum), [Pointer](https://rux-lang.dev/docs/learn/pointer)

```sh
rux run
```

```text
a 64-bit value  0x0739b89787c9e4f2
a 16-byte key   2f ec 37 79 c3 31 0e 0f ba 9a a0 34 15 17 b9 b7
a die roll      6
```

This is a sample: every value is different on each run.

Read the lesson: https://rux-lang.dev/docs/learn/entropy
