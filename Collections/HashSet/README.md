# HashSet

Track which values have been seen with a `HashSet<T>`, whose `Insert` reports whether a value was new.

**You'll need:** [HashMap](https://rux-lang.dev/docs/learn/hash-map), [Propagate](https://rux-lang.dev/docs/learn/propagate), [Presence](https://rux-lang.dev/docs/learn/presence), [Array](https://rux-lang.dev/docs/learn/array)

```sh
rux run
```

```text
Lyon   first visit
Paris  first visit
Lille  first visit
Paris  been here before
Nice   first visit
Lyon   been here before
6 stops, 4 different cities
visited Nice?  true
visited Brest? false
forgot Lille
visited Lille? false
```

Read the lesson: https://rux-lang.dev/docs/learn/hash-set
