# Input

Read lines from standard input with `ReadLine`, where reaching the end of the input is an
`IoError` whose kind is `EndOfStream`.

**You'll need:** [StringBuilder](https://rux-lang.dev/docs/learn/string-builder), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Guard](https://rux-lang.dev/docs/learn/guard), [Break](https://rux-lang.dev/docs/learn/break)

```sh
rux run
```

A sample session: type `Ada`, an empty line and `Grace Hopper`, then end the input with Ctrl+Z
and Enter on Windows (Ctrl+D elsewhere).

```text
Type some lines, then end the input.
Ada
line 1 is "Ada", 3 bytes

line 2 is empty
Grace Hopper
line 3 is "Grace Hopper", 12 bytes
^Z
end of input after 3 line(s)
```

Piped input ends by itself, and no input at all ends at once:

```sh
"Ada", "", "Grace Hopper" | rux run
$null | rux run
```

Read the lesson: https://rux-lang.dev/docs/learn/input
