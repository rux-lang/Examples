# LruCache

Put a slow lookup behind an `LruCache<K, V>` of three entries, and follow the hits, the misses and
which entry each miss evicts when the cache is full.

**You'll need:** [HashMap](https://rux-lang.dev/docs/learn/hash-map), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference)

```sh
rux run
```

```text
user 1  miss  ada
user 2  miss  brian
user 3  miss  carmen
user 1  hit   ada
user 4  miss  dmitri  (evicted user 2)
user 2  miss  brian   (evicted user 3)
user 1  hit   ada
user 3  miss  carmen  (evicted user 4)
recency: 3 1 2
8 requests, 6 loads
peek 2: brian
has 4: false
recency: 3 1 2
```

Read the lesson: https://rux-lang.dev/docs/learn/lru-cache
