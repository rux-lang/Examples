# Fail

Leave a fallible function through its failure channel with `fail`, carrying an error that says what went wrong.

**You'll need:** [Fallible](https://rux-lang.dev/docs/learn/fallible), [Struct](https://rux-lang.dev/docs/learn/struct)

```sh
rux run
```

```text
take 30 from 100: 70 left
take 100 from 100: 0 left
take 130 from 100: refused, 30 short
take 5 from 0: refused, 5 short
```

Read the lesson: https://rux-lang.dev/docs/learn/fail
