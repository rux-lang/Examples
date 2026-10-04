# Array

Store a fixed number of values inline in an `int32[4]`, index them from zero, and see that copying
an array copies every element.

**You'll need:** [Mutable](https://rux-lang.dev/docs/learn/mutable), [For](https://rux-lang.dev/docs/learn/for)

```sh
rux run
```

```text
first 2, last 7
length 4
sum 17
primes[0] = 2
primes[1] = 3
primes[2] = 5
primes[3] = 7
scores 10 25 30
copy   99 25 30
scores == copy  false
```

Read the lesson: https://rux-lang.dev/docs/learn/array
