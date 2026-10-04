# WritableSlice

Change an array's elements through a writable view, `var int32[..]`, and see that a view's
writability is separate from its binding's mutability.

**You'll need:** [Slice](https://rux-lang.dev/docs/learn/slice)

```sh
rux run
```

```text
start   1 2 3 4 5
view    1 20 3 4 5
filled  1 20 3 0 0
cursor  starts at 1
cursor  moved to 3
reader  sees 30
```

Read the lesson: https://rux-lang.dev/docs/learn/writable-slice
