# ReplaceSwap

See why a single field cannot be given away by itself, take one with Core's `Replace` or `Swap`, and take a whole struct apart with `let Parcel { wrapping, gift } = parcel;`.

**You'll need:** [GiveAway](https://rux-lang.dev/docs/learn/give-away), [Destructor](https://rux-lang.dev/docs/learn/destructor), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference), [Destructure](https://rux-lang.dev/docs/learn/destructure), [StructPattern](https://rux-lang.dev/docs/learn/struct-pattern)

```sh
rux run
```

```text
swapping:
    Ada gets the book, Bo the scarf
replacing:
    took off the red paper, wrapped it in green paper
unwrapping:
    unwrapped the book from the green paper
    green paper destroyed
    reading the book
end of Main:
    book destroyed
    red paper destroyed
    scarf destroyed
    blue paper destroyed
```

Read the lesson: https://rux-lang.dev/docs/learn/replace-swap
