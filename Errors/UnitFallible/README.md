# UnitFallible

Write a function that can fail but has no success value, `func F(...) -> !E`, which succeeds by reaching its end.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference)

`Withdraw` declares only its error, `-> !ShortOfFunds`, so its success is the unit `()`: falling off the end or a bare `return;` succeeds, and `throw` fails. Its call still gives back a fallible, so `Attempt` matches it by side: the `.Success(())` arm runs only when the withdrawal worked, and the `.Failure(error)` arm reports the shortfall.

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
