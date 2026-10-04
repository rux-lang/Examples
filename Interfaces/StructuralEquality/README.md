# StructuralEquality

Compare structs, tuples, arrays and variants with `==`, field by field, without writing any code.

**You'll need:** [Struct](https://rux-lang.dev/docs/learn/struct), [Tuple](https://rux-lang.dev/docs/learn/tuple), [Variant](https://rux-lang.dev/docs/learn/variant), [Comparison](https://rux-lang.dev/docs/learn/comparison)

```sh
rux run
```

```text
a == b:        true
a == flipped:  false
a != flipped:  true
segments:      true
tuples:        true
arrays:        false
same reading:  true
vs missing:    false
```

Read the lesson: https://rux-lang.dev/docs/learn/structural-equality
