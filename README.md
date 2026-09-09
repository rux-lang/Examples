# Rux Examples

Example projects and programming tutorials for the [Rux](https://rux-lang.dev) language.

## List of Projects

The list is a course: each entry assumes only what came before it, and each is one complete
package demonstrating one idea. Linked entries exist today; the rest are planned.

### Track A — The language

Read in order — every lesson builds on the previous one.

**I. First programs**

1. **[Hello](Hello/)** — print "Hello, World!", the minimal Rux application
2. **[Primitive](Primitive/)** — declare and print all primitive types, and render an integer in binary, octal, and hex
3. **[Variable](Variable/)** — `let` and `var`, type inference, and why an immutable binding cannot be reassigned
4. **[Operator](Operator/)** — arithmetic, comparison, logical, and bitwise operators, and their precedence
5. **[Convert](Convert/)** — cast between numeric types with `as`, and see what a value that does not fit becomes
6. **[Console](Console/)** — write to the console with `Print` and `PrintLine`, and fill placeholders in order

**II. Control flow**

7. **[Condition](Condition/)** — choose between branches at run time with `if`, `else if`, and `else`
8. **[Loop](Loop/)** — repeat with `while`, and leave a loop early with `break` and `continue`
9. **[Range](Range/)** — walk a range with `for`, and tell `..` from `..=`
10. **[Array](Array/)** — hold a fixed number of values of one type, and iterate over them
11. **[Match](Match/)** — select a branch by value with `match`, and default with `else`

**III. Functions and packages**

12. **Function** — declare functions with parameters and return values, and call one recursively
13. **Module** — split a package across source files and control visibility with `pub`

**IV. Custom types**

14. **Struct** — group related values into a struct, and give it methods with `extend`
15. **Enum** — name a fixed set of cases, and give the enum an explicit underlying type
16. **Variant** — attach data to each case, and destructure it in a `match` arm
17. **Interface** — implement `Display`, `Equatable`, and `Comparable` for a type of your own
18. **Generic** — write one function that works for many types, and constrain it to those that fit
19. **Iterator** — implement `Iterator` so a type of your own can be used with `for`

**V. Errors**

20. **Option** — represent a value that may be absent, and supply a default when it is
21. **Result** — return either a value or an error, and pass failures up to the caller

**VI. Memory**

22. **[Memory](Memory/)** — allocate, use and free memory by hand (`Alloc`, `Zero`, `Free`)
23. **Pointer** — the difference between `*T` and `*var T`, and detecting overflow through an out-parameter
24. **Ownership** — copying, transferring with `<-`, and the destructor that runs when a value goes out of scope
25. **Allocator** — allocate from an arena or a box instead of straight from the system

**VII. Text and input**

26. **String** — build and inspect text, and tell a length in bytes from a length in characters
27. **[Circle](Circle/)** — read a line from the console, parse it to a number, and match on the result
28. **Format** — control width, alignment, precision, and number base when formatting values
29. **Unicode** — code points, grapheme clusters, and case conversion beyond ASCII

**VIII. Collections**

30. **Vector** — a growable array that manages its own memory and capacity
31. **Deque** — add and remove at both ends, and see where that beats a vector
32. **HashMap** — look values up by key, and test membership with a hash set
33. **TreeMap** — keep keys in order, and weigh the cost against hashing
34. **Algorithm** — sort, search, and fold over the containers built so far

**IX. Files**

35. **File** — write text to a file and read it back, handling failure at every step
36. **Binary** — read and write fixed-width values and raw bytes, including byte order
37. **Directory** — create, list, and remove directories, and read file metadata
38. **Path** — join and split paths, and see why a path is not a string

**X. Compile-time programming**

39. **[Version](Version/)** — select code at compile time with `when` and the compiler version
40. **Config** — read build configuration at compile time and reject an unsupported one

### Track B — Standard packages

Independent tours of a single package. Each assumes all of Track A, but none assumes another,
so they can be read in any order.

41. **[Extern](Extern/)** — call a platform API directly through an extern declaration and `#Link`
42. **Math** — roots, powers, logarithms, trigonometry, and rounding
43. **Time** — measure elapsed time, work with durations, and format a calendar date
44. **Random** — seed a generator, draw from a range, and sample from a sequence
45. **Json** — parse JSON into a value, walk it, and write it back out

## Running an Example

Each example is a standalone Rux package with its own `Rux.toml`, and requires Rux 0.4.0 or newer.

```sh
cd Hello
rux run
```

If necessary, install the dependencies first:

```sh
cd Hello
rux install
rux run
```

To build and type-check an example without running it:

```sh
cd Hello
rux check
```

## License

Licensed under the [MIT License](LICENSE.md).
