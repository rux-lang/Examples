# UnitFallible

Write a fallible function with no success value, `-> ! E`, which succeeds by reaching its end.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference)

```sh
rux run
```

```text
take 40: done, 60 left
take 0: done, 60 left
take 80: refused, 20 short
take 60: done, 0 left
take 1: refused, 1 short
```

Read the lesson: https://rux-lang.dev/docs/learn/unit-fallible
