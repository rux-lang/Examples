# Callback

Pass a named function to another function as a value, typed by its shape like `func(int32) -> int32`.

**You'll need:** [Function](https://rux-lang.dev/docs/learn/function), [Return](https://rux-lang.dev/docs/learn/return), [For](https://rux-lang.dev/docs/learn/for)

```sh
rux run
```

```text
2 4 6 8 10 
1 4 9 16 25 
ApplyTwice(Double, 3)  12
ApplyTwice(Square, 3)  81
CountWhere(10, IsEven) 5
chosen(21)             42
chosen(21)             441
```

Read the lesson: https://rux-lang.dev/docs/learn/callback
