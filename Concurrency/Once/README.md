# Once

Build a shared lookup table exactly once, by whichever thread needs it first, with a `Once` module
variable, and count each thread's own lookups in a `thread var`.

**You'll need:** [Callback](https://rux-lang.dev/docs/learn/callback), [Thread](https://rux-lang.dev/docs/learn/thread)

```sh
rux run
```

```text
thread 1: 53 primes in 250 lookups
thread 2: 42 primes in 250 lookups
thread 3: 37 primes in 250 lookups
thread 4: 36 primes in 250 lookups
primes up to 1000:  168
table built:        1 time
completed:          true
lookups in Main:    0
```

Read the lesson: https://rux-lang.dev/docs/learn/once
