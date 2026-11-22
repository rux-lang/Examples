# Destroy

End a value early with `destroy value;`, and end it with a `~self` method in place of its destructor, one that can return a field or fail.

**You'll need:** [Destructor](https://rux-lang.dev/docs/learn/destructor), [GiveAway](https://rux-lang.dev/docs/learn/give-away), [UnitFallible](https://rux-lang.dev/docs/learn/unit-fallible), [Catch](https://rux-lang.dev/docs/learn/catch)

```sh
rux run
```

```text
destroy:
    the hotel closes Ada's stay
    key 1 back at the desk
    Ada's stay is over
check out:
    Bob checks out
    key 2 back at the desk
check out owing:
    key 3 back at the desk
    120 still to pay
hand over:
    Dee hands key 4 on
    the new guest holds key 4
end of Main:
    key 4 back at the desk
```

Read the lesson: https://rux-lang.dev/docs/learn/destroy
