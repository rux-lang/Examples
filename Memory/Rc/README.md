# Rc

Share one value between several owners with `Rc<T>`, whose copies count themselves: the value is
read through `Get`, written through `GetMutable` only while one handle holds it, and destroyed when
the last handle goes.

**You'll need:** [Box](https://rux-lang.dev/docs/learn/box), [CustomCopy](https://rux-lang.dev/docs/learn/custom-copy), [OptionalPointer](https://rux-lang.dev/docs/learn/optional-pointer)

```sh
rux run
```

```text
created, 1 handle
opening windows:
    4 handles
    editor in paper at 12pt, 5 handles
    can write: false
    editor and preview share: true
    lookalike is shared:      false
    the lookalike theme is destroyed
windows closed, 1 handle
end of Main:
    the paper theme is destroyed
```

Read the lesson: https://rux-lang.dev/docs/learn/rc
