# NanoId

Make short, URL-safe random identifiers with `NanoId::Generate`, read them back strictly with
`NanoId::Parse`, and fill a buffer of your own length from a custom alphabet with `GenerateNanoId`.

**You'll need:** [Uuid](https://rux-lang.dev/docs/learn/uuid), [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice)

```sh
rux run
```

```text
default alphabet: 64 characters, 21 per identifier
V1StGXR8_Z5jdHi6B-myT   -> V1StGXR8_Z5jdHi6B-myT
V1StGXR8_Z5jdHi6B       -> wrong length at byte 17
V1StGXR8_Z5jdHi6B-myT42 -> wrong length at byte 21
V1StGXR8+Z5jdHi6B-myT   -> not in the alphabet at byte 8
a new one:   wjQ9BAvSAUonmlZf6TfIw
length 21, parses back to itself: true
a code:      198099
length 6, digits only: true
0123456789abcdef -> usable
x                -> too few characters
abcabc           -> a duplicate at byte 3
abé              -> not ASCII at byte 2
```

The `a new one` and `a code` lines are samples: each run draws a new identifier and a new code.
Every other line is the same on each run.

Read the lesson: https://rux-lang.dev/docs/learn/nano-id
