# Vector

Push values into a `Vector<T>` and watch its length and capacity grow apart.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [GenericType](https://rux-lang.dev/docs/learn/generic-type), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

```sh
rux run
```

```text
empty       length 0  capacity 0
push 1      length 1  capacity 4  (grew)
push 5      length 5  capacity 8  (grew)
push 9      length 9  capacity 16  (grew)
after 9     length 9  capacity 16
reserved    length 9  capacity 128
contents    10 20 30 40 50 60 70 80 90
index 2     30
index 50    -1
```

Read the lesson: https://rux-lang.dev/docs/learn/vector
