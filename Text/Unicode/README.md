# Unicode

Count the same text three ways — bytes, scalars and graphemes — and find text where all three
counts differ.

**You'll need:** [Encoding](https://rux-lang.dev/docs/learn/encoding), [Utf8](https://rux-lang.dev/docs/learn/utf8)

```sh
rux run
```

```text
cafe  bytes 4, scalars 4, graphemes 4
café  bytes 5, scalars 4, graphemes 4
café  bytes 6, scalars 5, graphemes 4
🇺🇦  bytes 8, scalars 2, graphemes 1
```

Read the lesson: https://rux-lang.dev/docs/learn/unicode
