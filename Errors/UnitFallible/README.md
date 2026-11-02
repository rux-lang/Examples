# UnitFallible

Write a throwing function with no success value, `func F(...) throws E`, which succeeds by reaching its end.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference)

`Withdraw` declares only `throws ShortOfFunds`, so its success is the unit `()`: falling off the end or a bare `return;` succeeds, and `throw` fails. Its call is still a throw site, so `Attempt` marks it inside `try { ... } catch { ... }`, and the line after the call runs only when the withdrawal worked.

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
