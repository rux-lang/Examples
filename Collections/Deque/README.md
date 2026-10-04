# Deque

Run a queue with a `Deque<T>`, adding and removing values at both ends.

**You'll need:** [Vector](https://rux-lang.dev/docs/learn/vector), [Presence](https://rux-lang.dev/docs/learn/presence), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

```sh
rux run
```

```text
arrived  101 102 103
urgent   900 101 102 103
served   900
served   101
left     103
waiting  102
served   102
empty    nobody is waiting
```

Read the lesson: https://rux-lang.dev/docs/learn/deque
