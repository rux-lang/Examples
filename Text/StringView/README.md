# StringView

Borrow text with `StringView`, checked once to be UTF-8, then trim, search, cut and split it
without copying a byte.

**You'll need:** [Encoding](https://rux-lang.dev/docs/learn/encoding), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [Iterator](https://rux-lang.dev/docs/learn/iterator)

```sh
rux run
```

```text
checked        [Grace Hopper]
trimmed        [Ada Lovelace, mathematician]
comma at byte  12
starts with Ada true
name           [Ada Lovelace]
word           [Ada] 3 bytes
word           [Lovelace] 8 bytes
part 0..4      née
part 0..2      (refused)
```

Read the lesson: https://rux-lang.dev/docs/learn/string-view
