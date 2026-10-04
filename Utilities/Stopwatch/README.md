# Stopwatch

Measure elapsed time with `Instant`, a clock that only moves forward, and `Since`, which refuses
a reading pair given the wrong way round.

**You'll need:** [Duration](https://rux-lang.dev/docs/learn/duration), [Catch](https://rux-lang.dev/docs/learn/catch)

```sh
rux run
```

```text
asked to sleep for 0.05s
slept at least that long: true
sum of 0..1000000 = 499999500000
the loop took more than no time: true
reversed: none, because the argument was the later reading
```

The measured times differ on every run, so the program prints only facts about them that hold
every time.

Read the lesson: https://rux-lang.dev/docs/learn/stopwatch
