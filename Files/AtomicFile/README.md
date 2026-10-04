# AtomicFile

Replace a file whole with `WriteAtomically`, so a reader never sees it half-written.

**You'll need:** [File](https://rux-lang.dev/docs/learn/file), [Binary](https://rux-lang.dev/docs/learn/binary)

```sh
rux run
```

```text
first write      volume = 3
while writing    volume = 3
after commit     volume = 11
```

Read the lesson: https://rux-lang.dev/docs/learn/atomic-file
