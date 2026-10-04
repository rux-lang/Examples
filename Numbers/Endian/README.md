# Endian

Store and load integers as bytes in an explicit order, big endian or little endian, and see what
reading them in the wrong order does.

**You'll need:** [Pointer](https://rux-lang.dev/docs/learn/pointer), [OutParameter](https://rux-lang.dev/docs/learn/out-parameter), [Slice](https://rux-lang.dev/docs/learn/slice), [Shift](https://rux-lang.dev/docs/learn/shift)

```sh
rux run
```

```text
this machine is little endian: true
value          0x12345678
little endian  78 56 34 12
big endian     12 34 56 78
ReverseBytes   0x78563412

port           443
wrong order    47873
```

Read the lesson: https://rux-lang.dev/docs/learn/endian
