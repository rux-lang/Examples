# TomlWrite

Read a TOML document, add a key, write it back with `TomlWriteDocument`, and check that writing is stable across a round trip.

**You'll need:** [Toml](https://rux-lang.dev/docs/learn/toml), [JsonWrite](https://rux-lang.dev/docs/learn/json-write), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum)

```sh
rux run
```

```text
read:
# Settings for the demo server
name = 'Rux'      # a literal string
mask = 0xFF
server = { host = "localhost", port = 8080 }

tags = ["web", "api"]

written:
name = "Rux"
mask = 255
tags = ["web", "api"]

[server]
host = "localhost"
port = 8080
debug = true

written twice, same text: true
```

Read the lesson: https://rux-lang.dev/docs/learn/toml-write
