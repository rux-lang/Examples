# GenericSum

Build a sum from type parameters — `T | U` — see it collapse when `T` and `U` are the
same type, and end its `match` in `else`.

**You'll need:** [Generic](https://rux-lang.dev/docs/learn/generic), [SumType](https://rux-lang.dev/docs/learn/sum-type), [TypedPattern](https://rux-lang.dev/docs/learn/typed-pattern)

```sh
rux run
```

```text
int32 | bool    first second
int32 | int32   5
collapsed side  first
```

Read the lesson: https://rux-lang.dev/docs/learn/generic-sum
