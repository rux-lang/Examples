# Arena

Allocate a round of work from an `Arena` and release all of it at once with `Reset`.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [Box](https://rux-lang.dev/docs/learn/box), [PointerSlice](https://rux-lang.dev/docs/learn/pointer-slice), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main)

```sh
rux run
```

```text
round 1: total 11310, bytes in use 480, blocks held 2
  reset: bytes in use 0, blocks held 1
round 2: total 11310, bytes in use 480, blocks held 1
  reset: bytes in use 0, blocks held 1
round 3: total 11310, bytes in use 480, blocks held 1
  reset: bytes in use 0, blocks held 1
```

Read the lesson: https://rux-lang.dev/docs/learn/arena
