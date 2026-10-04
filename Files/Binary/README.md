# Binary

Write and read fixed-width binary values, and refuse a record that the file cut short.

**You'll need:** [File](https://rux-lang.dev/docs/learn/file), [Endian](https://rux-lang.dev/docs/learn/endian)

```sh
rux run
```

```text
Bin/record.bin holds 14 bytes
  version 3, count 1200000, average 2.75
Bin/record.bin holds 10 bytes
  the file ends inside a field: record refused
```

Read the lesson: https://rux-lang.dev/docs/learn/binary
