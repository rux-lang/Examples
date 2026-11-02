# JsonStream

Read JSON as a stream of events with `JsonEventReader`, keeping only the fields you want and stopping cleanly on a broken document.

**You'll need:** [Json](https://rux-lang.dev/docs/learn/json), [InterfaceValue](https://rux-lang.dev/docs/learn/interface-value), [Destructor](https://rux-lang.dev/docs/learn/destructor), [Catch](https://rux-lang.dev/docs/learn/catch), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match), [Optional](https://rux-lang.dev/docs/learn/optional)

```sh
rux run
```

```text
[{"title": "Dune", "year": 1965}, {"year": 1815, "title": "Emma"}]
  title: Dune
  title: Emma
  2 books
[{"title": "Dune"}, {"title": "Emma"]
  title: Dune
  title: Emma
  refused at byte 36: token that cannot appear here
[{"title": "Dune"}, {"title":
  title: Dune
  refused at byte 29: document ended in the middle of a value
```

Read the lesson: https://rux-lang.dev/docs/learn/json-stream
