# Notes

Keep a to-do list as JSON in a file: save it, load it back, add to it, and handle a damaged or missing file.

**You'll need:** Parts 1–21 — this project is the checkpoint for Data formats, and leans on [File](https://rux-lang.dev/docs/learn/file), [AtomicFile](https://rux-lang.dev/docs/learn/atomic-file), [Json](https://rux-lang.dev/docs/learn/json) and [JsonWrite](https://rux-lang.dev/docs/learn/json-write).

```sh
rux run
```

```text
saved 2 notes to Bin/notes.json
added a note; the file now reads:
[
  {
    "title": "buy milk",
    "done": true
  },
  {
    "title": "water the plants",
    "done": false
  },
  {
    "title": "write a Rux program",
    "done": false
  }
]
3 notes:
  [x] buy milk
  [ ] water the plants
  [ ] write a Rux program
damaged file refused at byte 24: document ended in the middle of a value
no notes file any more: starting a new list would begin here
```

Read the project: https://rux-lang.dev/docs/learn/notes
