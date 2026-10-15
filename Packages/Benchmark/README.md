# Benchmark

Measure how long two searches take with the `Test` package's benchmarks: a `BenchmarkCase` per
search, `Consume` to keep the work from being optimized away, and `RunBenchmarksWith` to repeat
each one until it can be timed, after first checking that the searches agree.

**You'll need:** [BinarySearch](https://rux-lang.dev/docs/learn/binary-search), [Callback](https://rux-lang.dev/docs/learn/callback), [Pointer](https://rux-lang.dev/docs/learn/pointer), [UnitTest](https://rux-lang.dev/docs/learn/unit-test)

```sh
rux run
```

```text
linear and binary search agree on 2048 values: true

bench Search::Linear ... 970.3 ns/iter (119084 iterations)
bench Search::LinearMissing ... 1298.7 ns/iter (78212 iterations)
bench Search::Binary ... 79.3 ns/iter (2000000 iterations)

result: 3 measured, 0 filtered out
```

The three `bench` lines are samples: the times and iteration counts depend on the machine and
change on every run. The other lines are the same each time. For times worth comparing, measure an
optimized build with `rux run --release`.

Read the lesson: https://rux-lang.dev/docs/learn/benchmark
