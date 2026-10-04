# MutatingMethod

Write methods that change the value they are called on, with `self: &var T`.

**You'll need:** [Method](https://rux-lang.dev/docs/learn/method), [MutableReference](https://rux-lang.dev/docs/learn/mutable-reference)

```sh
rux run
```

```text
push 10  accepted true
push 20  accepted true
push 30  accepted true
push 40  accepted true
push 50  accepted false
full true
pop  40
pop  30
pop  20
pop  10
empty true
```

Read the lesson: https://rux-lang.dev/docs/learn/mutating-method
