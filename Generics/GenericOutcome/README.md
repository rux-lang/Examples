# GenericOutcome

Write reusable helpers over `T ! E` and `T?` as generic functions, since optionals and
fallibles cannot be extended.

**You'll need:** [Generic](https://rux-lang.dev/docs/learn/generic), [Outcome](https://rux-lang.dev/docs/learn/outcome), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [OptionalPropagate](https://rux-lang.dev/docs/learn/optional-propagate), [Is](https://rux-lang.dev/docs/learn/is)

```sh
rux run
```

```text
ValueOr      3 -1
Succeeded    true false
Failed       false true
SuccessOf    3
ErrorOf      cannot divide 7 by zero
Both         80 x 24
Both         complete: false
```

Read the lesson: https://rux-lang.dev/docs/learn/generic-outcome
