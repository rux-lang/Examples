# Utf8

Check bytes with `Validate`, which fails with a `Utf8Failure` saying what is wrong and where, and
walk text one character at a time with `DecodeAt`.

**You'll need:** [Encoding](https://rux-lang.dev/docs/learn/encoding), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Catch](https://rux-lang.dev/docs/learn/catch)

```sh
rux run
```

```text
byte 0  n  1 byte(s)
byte 1  é  2 byte(s)
byte 3  e  1 byte(s)
whole       valid
word[..2]   truncated UTF-8 sequence at byte 1
word[2..]   invalid UTF-8 start byte at byte 0
```

Read the lesson: https://rux-lang.dev/docs/learn/utf8
