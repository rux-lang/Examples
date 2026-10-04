# Coalesce

Replace absence with a fallback value using `??`, which runs the fallback only when it is needed.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Function](https://rux-lang.dev/docs/learn/function)

```sh
rux run
```

```text
monday:  -4
tuesday: 0
monday or forecast:
  -4
tuesday or forecast:
  (asking the forecast)
  -2
first frost this week: -4
tuesday was mild: true
```

Read the lesson: https://rux-lang.dev/docs/learn/coalesce
