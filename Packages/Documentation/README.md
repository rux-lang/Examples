# Documentation

Describe a public API with `///` and `/** */` comments and their tags, and generate reference pages from them with `rux doc`.

**You'll need:** [Comment](https://rux-lang.dev/docs/learn/comment), [Visibility](https://rux-lang.dev/docs/learn/visibility), [Method](https://rux-lang.dev/docs/learn/method)

```sh
rux run
```

```text
tile  3 x 2 covers 6
floor 12 x 8 covers 96
```

Then generate the pages, which land in `Bin/Docs/index.html`:

```sh
rux doc --open
```

Read the lesson: https://rux-lang.dev/docs/learn/documentation
