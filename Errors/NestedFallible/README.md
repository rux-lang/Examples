# NestedFallible

Keep two meanings apart by nesting: `int? ! E` for "the next value, the end, or a failure", and
`(int ! E1) ! E2` for an answer that can itself be a failure.

**You'll need:** [NestedOptional](https://rux-lang.dev/docs/learn/nested-optional), [Outcome](https://rux-lang.dev/docs/learn/outcome)

```sh
rux run
```

```text
sensor 1 log: 20 21 22 (end)
sensor 2 log: 20 21 (sensor 2 broke)
sensor 1 test: reads 21
sensor 2 test: 999 is out of range
sensor 3 test: no answer
```

Read the lesson: https://rux-lang.dev/docs/learn/nested-fallible
