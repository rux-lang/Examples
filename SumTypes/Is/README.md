# Is

Ask which member a sum holds — `token is Number`, `token is (Plus | Minus)` — and get a `bool` back without unpacking anything, and see that binding the member takes `if let`.

**You'll need:** [SubsetPattern](https://rux-lang.dev/docs/learn/subset-pattern), [For](https://rux-lang.dev/docs/learn/for), [Array](https://rux-lang.dev/docs/learn/array), [IfLet](https://rux-lang.dev/docs/learn/if-let)

```sh
rux run
```

```text
2 numbers, 3 operators
the numbers add up to 3
starts with a name: true
ends with a number: true
```

Read the lesson: https://rux-lang.dev/docs/learn/is
