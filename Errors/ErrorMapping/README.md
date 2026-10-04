# ErrorMapping

Pass a failure to the caller with `? else`, turning it into your own error and adding context
such as a line number.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [Propagate](https://rux-lang.dev/docs/learn/propagate)

```sh
rux run
```

```text
80 x 24: area 1920
8O x 24: line 1, column 2 is not a digit
80 x 2-4: line 2, column 2 is not a digit
```

Read the lesson: https://rux-lang.dev/docs/learn/error-mapping
