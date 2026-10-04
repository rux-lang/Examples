# Hash

Fingerprint bytes with `Fnv1a64Of`, `XxHash64Of` and `Crc32Of`, fast hashes that catch accidents
but are not cryptographic.

**You'll need:** [Pointer](https://rux-lang.dev/docs/learn/pointer), [StringLiteral](https://rux-lang.dev/docs/learn/string-literal), [FormatNumber](https://rux-lang.dev/docs/learn/format-number)

```sh
rux run
```

```text
hello world  fnv1a64 779a65e7023cd2e7  xxhash64 45ab6734b21e6968  crc32 0d4a1185
hello world  fnv1a64 779a65e7023cd2e7  xxhash64 45ab6734b21e6968  crc32 0d4a1185
hello worle  fnv1a64 779a64e7023cd134  xxhash64 06a208d921a7827a  crc32 7a4d2113
             fnv1a64 cbf29ce484222325  xxhash64 ef46db3751d8e999  crc32 00000000
in two pieces fnv1a64 779a65e7023cd2e7
```

Read the lesson: https://rux-lang.dev/docs/learn/hash
