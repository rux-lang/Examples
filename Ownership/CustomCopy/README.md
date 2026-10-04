# CustomCopy

Give `=` a body so that every copy of a type runs your own code.

**You'll need:** [NoCopy](https://rux-lang.dev/docs/learn/no-copy), [Destructor](https://rux-lang.dev/docs/learn/destructor)

```sh
rux run
```

```text
binding:
    photocopy: generation 1 -> 2
    original 1, copy 2
passing by value:
    photocopy: generation 2 -> 3
    showing 'Minutes', generation 3
    shredding generation 3
assigning:
    photocopy: generation 2 -> 3
    shredding generation 1
    board now holds 'Minutes', generation 3
end of Main:
    shredding generation 3
    shredding generation 2
    shredding generation 1
```

Read the lesson: https://rux-lang.dev/docs/learn/custom-copy
