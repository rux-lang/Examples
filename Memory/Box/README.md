# Box

Own one allocated value with `Box<T>`, which destroys the value and returns its memory when the box's life ends.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [Destructor](https://rux-lang.dev/docs/learn/destructor), [Move](https://rux-lang.dev/docs/learn/move), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main)

```sh
rux run
```

```text
a short-lived box:
    counted 1 pears
    destroying the pears tally
a box in Main:
    5 apples
    moved, same storage: true
end of Main:
    destroying the apples tally
```

Read the lesson: https://rux-lang.dev/docs/learn/box
