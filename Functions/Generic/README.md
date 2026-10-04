# Generic

Write one function with a type parameter `<T>` that works for many types, inferred or given explicitly.

**You'll need:** [Overload](https://rux-lang.dev/docs/learn/overload), [Convert](https://rux-lang.dev/docs/learn/convert)

```sh
rux run
```

```text
Larger(3, 9)                  9
Larger(2.5, 1.5)              2.5
Larger('a', 'z')              z
Pick(true, "yes", "no")       yes
Larger(200, 7) + 100          300
Larger<uint8>(200, 7) + 100   44
```

Read the lesson: https://rux-lang.dev/docs/learn/generic
