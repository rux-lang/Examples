# Render

Format into a `String` you keep with `Render`, which returns `String ! FormatError` and refuses a
wrong pattern before writing anything.

**You'll need:** [FormatNumber](https://rux-lang.dev/docs/learn/format-number), [String](https://rux-lang.dev/docs/learn/string), [Outcome](https://rux-lang.dev/docs/learn/outcome), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match)

```sh
rux run
```

```text
codes     INV-0007 and INV-0042, 8 bytes each
rendered  3 of 10
refused   bad spec at byte 5
refused   3 placeholders but 2 values
refused   unsupported formatting request
```

Read the lesson: https://rux-lang.dev/docs/learn/render
