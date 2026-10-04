# Visibility

Use `pub` to choose what a library package shows to the packages that depend on it, and see a private item refused across that boundary.

**You'll need:** [Module](https://rux-lang.dev/docs/learn/module), [Constructor](https://rux-lang.dev/docs/learn/constructor), [MutatingMethod](https://rux-lang.dev/docs/learn/mutating-method)

The companion library is in `Tally/`; this package depends on it by path, so one command builds both.

```sh
rux run
```

```text
step 4, count 10
```

Read the lesson: https://rux-lang.dev/docs/learn/visibility
