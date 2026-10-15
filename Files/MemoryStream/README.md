# MemoryStream

Write binary records into memory with a `ByteWriter` and read them back with a `ByteReader`, using
the same `Writer` and `Reader` code that also writes and reads a file, then test a cut-short input
without damaging a file.

**You'll need:** [Binary](https://rux-lang.dev/docs/learn/binary), [BufferedIo](https://rux-lang.dev/docs/learn/buffered-io), [InterfaceParameter](https://rux-lang.dev/docs/learn/interface-parameter)

```sh
rux run
```

```text
memory: 14 bytes: 03 00 01 00 d7 00 02 00 c6 00 07 00 e6 00
  sensor 1  21.5 C
  sensor 2  19.8 C
  sensor 7  23.0 C
file:   14 bytes
  sensor 1  21.5 C
  sensor 2  19.8 C
  sensor 7  23.0 C
cut:    9 bytes
  sensor 1  21.5 C
  ended inside a reading: refused
```

Read the lesson: https://rux-lang.dev/docs/learn/memory-stream
