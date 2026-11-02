# JsonWrite

Build a JSON value by hand, write it compact and pretty with `WriteValue`, parse the output back to the same text, and see a number JSON cannot spell refused.

**You'll need:** [Json](https://rux-lang.dev/docs/learn/json), [StringBuilder](https://rux-lang.dev/docs/learn/string-builder), [Display](https://rux-lang.dev/docs/learn/display), [Move](https://rux-lang.dev/docs/learn/move), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum)

```sh
rux run
```

```text
compact, 73 bytes:
{"name":"Rux","quote":"say \"hi\"\n","tags":["fast",2.50],"license":null}
pretty, 103 bytes:
{
  "name": "Rux",
  "quote": "say \"hi\"\n",
  "tags": [
    "fast",
    2.50
  ],
  "license": null
}
round trip gives the same text: true
NaN refused: not a JSON number
```

Read the lesson: https://rux-lang.dev/docs/learn/json-write
