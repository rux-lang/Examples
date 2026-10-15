# Compress

Compress a log with `Compress` in the raw, zlib and gzip formats and at each `Level`, get every
byte back with `Decompress`, see the checksum refuse damaged data, and stream the same log into a
.gz file and out again with `CompressWriter` and `DecompressReader`.

**You'll need:** [Vector](https://rux-lang.dev/docs/learn/vector), [PointerSlice](https://rux-lang.dev/docs/learn/pointer-slice), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum), [File](https://rux-lang.dev/docs/learn/file), [MemoryStream](https://rux-lang.dev/docs/learn/memory-stream)

```sh
rux run
```

```text
log                 11572 bytes
raw                 1377 bytes
zlib                1383 bytes
gzip                1395 bytes
gzip, store         11595 bytes
gzip, fastest       1771 bytes
gzip, default       1395 bytes
gzip, best          1360 bytes
round trip          11572 bytes, identical: true
11 bytes as gzip    31 bytes
damaged             refused, invalid input: true
file                1395 bytes
read back           11572 bytes, 400 lines
```

Read the lesson: https://rux-lang.dev/docs/learn/compress
