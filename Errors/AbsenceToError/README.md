# AbsenceToError

Turn a missing value into an error that says what was missing, with `option ?? throw`.

**You'll need:** [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [Fail](https://rux-lang.dev/docs/learn/fail)

`PriceOf` returns `int?`: an unknown product code is simply `none`. `Total` declares `-> int throws UnknownProduct` and turns that absence into an error with `PriceOf(code) ?? throw UnknownProduct { code: code }` — the fallback runs only when the price is missing, so the error is built only when it is needed. `Order` handles it at the call with `try { ... } catch { e => ... }`.

```sh
rux run
```

```text
2 x product 1: 500 cents
4 x product 3: 300 cents
1 x product 7: no product has code 7
```

Read the lesson: https://rux-lang.dev/docs/learn/absence-to-error
