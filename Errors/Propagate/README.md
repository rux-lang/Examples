# Propagate

Hand an error to the caller with plain `try`, which keeps the success and passes the error on unchanged.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Catch](https://rux-lang.dev/docs/learn/catch)

`TwoDigitsByHand` catches each error only to rethrow it with `catch { error => throw error }`; `TwoDigits` says the same with plain `try ReadDigit(...)`. Both declare `throws DigitError`, so the error leaves as itself and `Show` still learns which character was wrong. `Show` takes either function as a value of type `func(char, char) -> int throws DigitError`, and its call is marked like any other throw site.

```sh
rux run
```

```text
read 42
'x' is not a digit
'?' is not a digit
a digit is missing
'x' is not a digit
```

Read the lesson: https://rux-lang.dev/docs/learn/propagate
