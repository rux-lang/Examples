# Propagate

Hand a failure to the caller with postfix `?`, which keeps the success and passes the error on unchanged.

**You'll need:** [Outcome](https://rux-lang.dev/docs/learn/outcome), [Catch](https://rux-lang.dev/docs/learn/catch)

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
