# Dependency

Declare registry dependencies, which come from the package cache, beside a path dependency, which is compiled from a directory next to the program.

**You'll need:** [Package](https://rux-lang.dev/docs/learn/package), [Visibility](https://rux-lang.dev/docs/learn/visibility)

`Io` and `Math` come from the registry; run `rux install` once if they are not in your package cache yet. `Units` is the companion directory beside `Src/`.

```sh
rux run
```

```text
straight line 5.0 km
which is      3.11 miles
```

Read the lesson: https://rux-lang.dev/docs/learn/dependency
