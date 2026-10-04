# DynamicArray

Make a `Collections::Array<T>` whose length is chosen at run time, and compare it with an inline `int32[4]`.

**You'll need:** [Array](https://rux-lang.dev/docs/learn/array), [Slice](https://rux-lang.dev/docs/learn/slice), [Move](https://rux-lang.dev/docs/learn/move), [Catch](https://rux-lang.dev/docs/learn/catch), [Allocator](https://rux-lang.dev/docs/learn/allocator), [Vector](https://rux-lang.dev/docs/learn/vector)

```sh
rux run
```

```text
inline length   4
squares         0 1 4 9 16 25   (length 6)
copy[0]         99, primes[0] still 2
copy[9]         -1
copy.Set(9)     failed: index the collection does not have
```

Read the lesson: https://rux-lang.dev/docs/learn/dynamic-array
