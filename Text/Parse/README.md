# Parse

Read a number from text with `ParseInt32`, which returns `int32 ! ParseError` and says where
malformed or overflowing text went wrong.

**You'll need:** [FormatNumber](https://rux-lang.dev/docs/learn/format-number), [Outcome](https://rux-lang.dev/docs/learn/outcome), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback)

```sh
rux run
```

```text
[42]  42
[-17]  -17
[0x1F]  31
[]  refused, empty text
[ 42]  refused, not a digit at byte 0
[12abc]  refused, not a digit at byte 2
[2147483647]  2147483647
[2147483648]  refused, too large for an int32, at byte 10
[-2147483648]  -2147483648
[seven] with a fallback  0
```

Read the lesson: https://rux-lang.dev/docs/learn/parse
