# NoCopy

Mark a plain-data type `#NoCopy`, so that it is given away instead of copied and lent with a written `&`.

**You'll need:** [Destructor](https://rux-lang.dev/docs/learn/destructor), [GiveAway](https://rux-lang.dev/docs/learn/give-away)

```sh
rux run
```

```text
check in:
    key 12 issued
    key 12 opens room 12
give the key to a friend:
    friend holds key 12
check out:
    checking out of room 12
    key 12 handed back
    done
```

Read the lesson: https://rux-lang.dev/docs/learn/no-copy
