# BufferedIo

Gather small writes in a `BufferedWriter`, and watch them reach the file when it fills or flushes.

**You'll need:** [File](https://rux-lang.dev/docs/learn/file), [InterfaceValue](https://rux-lang.dev/docs/learn/interface-value), [Destructor](https://rux-lang.dev/docs/learn/destructor)

```sh
rux run
```

```text
write  pending  in file
    1       10        0
    2       20        0
    3       30        0
    4       10       30
    5       20       30
    6       30       30
flush        0       60
```

Read the lesson: https://rux-lang.dev/docs/learn/buffered-io
