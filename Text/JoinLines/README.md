# JoinLines

Walk the lines of a text with `Lines`, put pieces back together with `Join`, and change the case of
whole texts with `ToUpper`, `ToLower` and `FoldCase`, which follow Unicode's full mappings.

**You'll need:** [String](https://rux-lang.dev/docs/learn/string), [UnicodeCase](https://rux-lang.dev/docs/learn/unicode-case), [Iterator](https://rux-lang.dev/docs/learn/iterator)

```sh
rux run
```

```text
line 1  [Ada Lovelace]
line 2  [grace hopper]
line 3  []
line 4  [  Alan Turing  ]
line 5  [Katherine Johnson]
joined   Ada Lovelace, grace hopper, Alan Turing, Katherine Johnson
upper    STRASSE (7 characters)
lower    école
found    grace hopper at position 2
same     true
```

Read the lesson: https://rux-lang.dev/docs/learn/join-lines
