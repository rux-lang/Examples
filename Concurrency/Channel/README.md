# Channel

Pass values between threads through a bounded `Channel<T>`: one thread sends, another transforms,
`Main` receives, and closing a channel ends the stream once what was sent has drained.

**You'll need:** [Presence](https://rux-lang.dev/docs/learn/presence), [Thread](https://rux-lang.dev/docs/learn/thread), [Mutex](https://rux-lang.dev/docs/learn/mutex)

```sh
rux run
```

```text
squares: 1 4 9 16 25 36 49 64 81 100
total:   385
after close: 7, 8, then none
closed, 9 came back
```

Read the lesson: https://rux-lang.dev/docs/learn/channel
