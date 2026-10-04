# Metadata

Ask the filesystem what a path names with `MetadataOf`: its kind, size, permissions and times.

**You'll need:** [File](https://rux-lang.dev/docs/learn/file), [Enum](https://rux-lang.dev/docs/learn/enum), [MatchExpression](https://rux-lang.dev/docs/learn/match-expression)

```sh
rux run
```

```text
Bin/sample.txt
  kind         file
  size         10 bytes
  writable     true
  recent       true
Bin
  kind         directory
  size         0 bytes
  writable     true
  recent       true
Bin/sample.txt: not found
```

Read the lesson: https://rux-lang.dev/docs/learn/metadata
