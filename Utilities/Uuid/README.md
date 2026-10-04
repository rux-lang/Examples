# Uuid

Make a random identifier with `Random`, which returns `Uuid ! EntropyError`, and read and write
its strict text form with `Parse` and `{}`.

**You'll need:** [Entropy](https://rux-lang.dev/docs/learn/entropy), [Outcome](https://rux-lang.dev/docs/learn/outcome), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match)

```sh
rux run
```

```text
123e4567-e89b-42d3-a456-426614174000          -> 123e4567-e89b-42d3-a456-426614174000
123E4567-E89B-42D3-A456-426614174000          -> 123e4567-e89b-42d3-a456-426614174000
urn:uuid:123e4567-e89b-42d3-a456-426614174000 -> 123e4567-e89b-42d3-a456-426614174000
123e4567e89b42d3a456426614174000              -> wrong length at byte 32
123e4567-e89b-42d3-a456-42661417400g          -> not a hexadecimal digit at byte 35
{123e4567-e89b-42d3-a456-426614174000}        -> wrong length at byte 36
same identifier: true
the nil UUID:    00000000-0000-0000-0000-000000000000
a new one:       12c16353-3376-4e49-a1ec-403586becf8d  version 4
```

Every line is the same on each run except the last, which is a sample: a new random UUID each
time.

Read the lesson: https://rux-lang.dev/docs/learn/uuid
