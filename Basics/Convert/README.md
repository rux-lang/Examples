# Convert

Convert between numeric, character and boolean types with `as`, and see what a value that does
not fit becomes.

**You'll need:** [Integer](https://rux-lang.dev/docs/learn/integer), [Float](https://rux-lang.dev/docs/learn/float), [Boolean](https://rux-lang.dev/docs/learn/boolean), [Character](https://rux-lang.dev/docs/learn/character)

```sh
rux run
```

```text
widen        int8 100 becomes int32 100
narrow       int32 300 becomes int8 44
sign         int32 -1 becomes uint8 255
float->int   3.9 becomes 3
float->int   -3.9 becomes -3
float->int   10000000000.0 becomes 2147483647
int->float   7 becomes 7.0
narrow float 3.141592653589793 becomes 3.1415927
char->int    A becomes 65
bool->int    true becomes 1
int->bool    5 becomes true
```

Read the lesson: https://rux-lang.dev/docs/learn/convert
