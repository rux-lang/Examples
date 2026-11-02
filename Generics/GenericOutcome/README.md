# GenericOutcome

Write reusable helpers over `T?` and Core's `Result<T, E>` as generic functions, so one helper serves every payload and error type.

**You'll need:** [Generic](https://rux-lang.dev/docs/learn/generic), [Outcome](https://rux-lang.dev/docs/learn/outcome), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [OptionalPropagate](https://rux-lang.dev/docs/learn/optional-propagate), [Is](https://rux-lang.dev/docs/learn/is)

Optionals are native and cannot be extended, so a helper over `T?` is a generic function whose parameter spells the form out. An outcome that has to be kept goes into `Result<T, E>`, built with `try .Success(Divide(...)) catch { e => .Failure(e) }`; `Succeeded`, `Failed`, `ValueOr`, `SuccessOf` and `ErrorOf` are generic functions over it, with `T` and `E` inferred from the argument.

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
CountPresent 2 of 4
```

Read the lesson: https://rux-lang.dev/docs/learn/generic-outcome
