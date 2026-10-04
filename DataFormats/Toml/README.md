# Toml

Parse a TOML document, read integers, floats, dates and arrays from its tables, and see a bad document refused by line and column.

**You'll need:** [Json](https://rux-lang.dev/docs/learn/json), [StringBuilder](https://rux-lang.dev/docs/learn/string-builder), [Date](https://rux-lang.dev/docs/learn/date), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main)

```sh
rux run
```

```text
name      Rux
port      8080 (integer: true, float: false)
ratio     0.75
released  2026-10-04
tags[0]   web
tags[1]   api
debug     present: false

refused at line 3, column 12: key given a value twice in the same table
refused at line 1, column 17: not the shape TOML defines
```

Read the lesson: https://rux-lang.dev/docs/learn/toml
