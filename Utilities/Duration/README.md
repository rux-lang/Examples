# Duration

Build a `Duration` from any unit and do arithmetic on it, where `FromHours`, `Plus` and `Times`
return `Duration?` because they can overflow.

**You'll need:** [Presence](https://rux-lang.dev/docs/learn/presence), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [OptionalPropagate](https://rux-lang.dev/docs/learn/optional-propagate)

```sh
rux run
```

```text
one lap        83.4s
in parts       83 s and 400000000 ns
twelve laps    1000.8s
in ms          1000800
limit - race   -0.8s   negative: true
1 h 30 min 15 s = 5415s
9223372036854775807 hours does not fit, so FromHours gave none
```

Read the lesson: https://rux-lang.dev/docs/learn/duration
