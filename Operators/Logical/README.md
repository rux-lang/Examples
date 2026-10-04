# Logical

Combine bools with `&& || !`, and watch short-circuiting skip the right side
once the left has decided.

**You'll need:** [Comparison](https://rux-lang.dev/docs/learn/comparison), [Boolean](https://rux-lang.dev/docs/learn/boolean)

```sh
rux run
```

```text
raining && cold  is false
raining || cold  is true
!raining         is false
false && true:
    evaluated left
    result false
true && false:
    evaluated left
    evaluated right
    result false
true || false:
    evaluated left
    result true
false || true:
    evaluated left
    evaluated right
    result true
average above 10: false
```

Read the lesson: https://rux-lang.dev/docs/learn/logical
