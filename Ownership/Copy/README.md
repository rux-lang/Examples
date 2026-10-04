# Copy

See that a by-value copy is a separate value: changing it never changes its source.

**You'll need:** [Struct](https://rux-lang.dev/docs/learn/struct), [Array](https://rux-lang.dev/docs/learn/array), [Function](https://rux-lang.dev/docs/learn/function)

```sh
rux run
```

```text
start (1, 2)   end (1, 99)
start (1, 2)   nudged (11, 2)
scores[0] 3   adjusted[0] 100
end (1, 2) after end = start
```

Read the lesson: https://rux-lang.dev/docs/learn/copy
