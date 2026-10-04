# Bitwise

Work on individual bits with `& | ^ ~`, and use masks to set, clear, flip and test flags packed
into one byte.

**You'll need:** [Integer](https://rux-lang.dev/docs/learn/integer), [Literal](https://rux-lang.dev/docs/learn/literal), [Const](https://rux-lang.dev/docs/learn/const), [Assignment](https://rux-lang.dev/docs/learn/assignment)

```sh
rux run
```

```text
a      11001010
b      10100110
a & b  10000010
a | b  11101110
a ^ b  01101100
~a     00110101

start          001
set Write      011
flip Execute   111
clear Read     110
can write?     true
can read?      false
write and run? true
```

Read the lesson: https://rux-lang.dev/docs/learn/bitwise
