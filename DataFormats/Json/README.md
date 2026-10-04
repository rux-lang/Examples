# Json

Parse a JSON document, read typed values out of it, and see malformed input refused with a reason and a position.

**You'll need:** [Allocator](https://rux-lang.dev/docs/learn/allocator), [Pointer](https://rux-lang.dev/docs/learn/pointer), [OutParameter](https://rux-lang.dev/docs/learn/out-parameter), [Outcome](https://rux-lang.dev/docs/learn/outcome), [StringView](https://rux-lang.dev/docs/learn/string-view)

```sh
rux run
```

```text
root      object of 4 members
name      Rux
license   present: false
year      2026 (text "2026", fits an int64: true)
tags[0]   text fast
tags[1]   text small
beta      boolean: true, value: true

[1, 2, 3]          parsed as array
[1, 2, 3,]         refused at byte 10: token that cannot appear here
{'name': 'Rux'}    refused at byte 1: byte that begins no token
{"open": [1, 2}    refused at byte 15: token that cannot appear here
{"a": 1} extra     refused at byte 9: text after the end of the document
                   refused at byte 0: document ended in the middle of a value
```

Read the lesson: https://rux-lang.dev/docs/learn/json
