# CharacterPattern

Match character literals and escapes such as `'w'` and `'\n'`, and use a guard for a class of characters.

**You'll need:** [Character](https://rux-lang.dev/docs/learn/character), [Match](https://rux-lang.dev/docs/learn/match), [Guard](https://rux-lang.dev/docs/learn/guard)

```sh
rux run
```

```text
'w' -> move up
'd' -> move right
' ' -> jump
'λ' -> cast a spell
'W' -> ignored
'q' -> ignored
'7' is a digit, 'k' is a lowercase letter, 'K' is something else
'\n' is a line break
```

Read the lesson: https://rux-lang.dev/docs/learn/character-pattern
