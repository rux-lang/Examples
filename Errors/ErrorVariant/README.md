# ErrorVariant

Design an error as a variant whose cases carry exactly the details each failure needs.

**You'll need:** [Propagate](https://rux-lang.dev/docs/learn/propagate), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match), [StructPattern](https://rux-lang.dev/docs/learn/struct-pattern)

```sh
rux run
```

```text
move 30 from account 1 to account 3
    done: balances 70, 50, 30
move 10 from account 2 to account 2
    refused: an account cannot pay itself
move 10 from account 1 to account 7
    refused: there is no account 7
move 45 from account 3 to account 1
    refused: asked for 45 but only 30 is there
```

Read the lesson: https://rux-lang.dev/docs/learn/error-variant
