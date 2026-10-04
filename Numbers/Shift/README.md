# Shift

Slide bits with `<<`, `>>` and `>>>`, see how the two right shifts differ on a negative number, and
pack three fields into one integer.

**You'll need:** [Bitwise](https://rux-lang.dev/docs/learn/bitwise), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
1 << 4     16
5 << 3     40
100 >> 2   25
-16        11111111111111111111111111110000
-16 >> 2   11111111111111111111111111111100  -4
-16 >>> 2  00111111111111111111111111111100  1073741820

packed     0xff8020
red        0xff
green      0x80
blue       0x20
```

Read the lesson: https://rux-lang.dev/docs/learn/shift
