# Propagate

Hand an error to the caller with a postfix `!`, which keeps the success and passes the error on unchanged.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Catch](https://rux-lang.dev/docs/learn/catch)

`TwoDigitsByHand` catches each error only to rethrow it with `catch { error => throw error }`; `TwoDigits` says the same with `ReadDigit(tens)! * 10 + ReadDigit(units)!`, one `!` after every call that can fail. Both declare `-> int ! DigitError`, so the error leaves as itself and `Show` still learns which character was wrong. `Show` takes either function as a value of type `func(char, char) -> int ! DigitError` and matches the outcome of its call by side.

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
