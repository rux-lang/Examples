# Encoding

Write the same text as UTF-8, UTF-16 and UTF-32 with the `c8`, `c16` and `c32` prefixes, and see
that lengths count code units, not characters.

**You'll need:** [StringLiteral](https://rux-lang.dev/docs/learn/string-literal), [Function](https://rux-lang.dev/docs/learn/function), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
Rux  UTF-8 3, UTF-16 3, UTF-32 3
café  UTF-8 5, UTF-16 4, UTF-32 4
€  UTF-8 3, UTF-16 1, UTF-32 1
🚀  UTF-8 4, UTF-16 2, UTF-32 1
rocket16[0] is 55357
rocket32[0] is 128640
```

Read the lesson: https://rux-lang.dev/docs/learn/encoding
