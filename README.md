# Rux Examples

Example projects and programming tutorials for the [Rux](https://rux-lang.dev) language.

## List of Projects

The list is a course: each entry assumes only what came before it, and each package
demonstrates one idea and no more. Linked entries exist today; the rest are planned.

### Track A — The language

Read in order — every lesson builds on the previous one.

**I. First programs**

1. **[Hello](Hello/)** — print "Hello, World!", the minimal Rux application
2. **[Primitive](Primitive/)** — declare and print every primitive type, from `int8` to `char32`
3. **[Variable](Variable/)** — `let` and `var`, type inference, and why an immutable binding cannot be reassigned
4. **Const** — name a value the compiler folds in, and see where it differs from `let`
5. **[Operator](Operator/)** — arithmetic, comparison, logical, and bitwise operators, and their precedence
6. **[Convert](Convert/)** — cast between numeric types with `as`, and see what a value that does not fit becomes
7. **[Console](Console/)** — write to the console with `Print` and `PrintLine`, and fill placeholders in order

**II. Control flow**

8. **[Condition](Condition/)** — choose between branches at run time with `if`, `else if`, and `else`
9. **Ternary** — pick one of two values inside an expression with `? :`
10. **[Loop](Loop/)** — repeat with `while` and `loop`, and leave early with `break` and `continue`
11. **[Range](Range/)** — walk a range with `for`, and tell `..` from `..=`
12. **[Match](Match/)** — select a branch by value with `match`, and default with `else`

**III. Arrays and slices**

13. **[Array](Array/)** — an inline array holding a fixed number of values of one type
14. **[Slice](Slice/)** — view part of an array without copying it, and pass it to a function

**IV. Functions**

15. **[Function](Function/)** — declare functions with parameters and return values, and call one recursively
16. **[Overload](Overload/)** — give several functions one name, and let the arguments choose between them
17. **[Variadic](Variadic/)** — accept any number of arguments, the way `PrintLine` does
18. **[Generic](Generic/)** — write one function that works for many types
19. **Callback** — pass a function to another function as an ordinary value
20. **[Module](Module/)** — split a package across source files and control visibility with `pub`

**V. Custom types**

21. **[Tuple](Tuple/)** — group a few values without declaring a type, and return more than one result
22. **[Struct](Struct/)** — group related values into a struct, and give it methods and a constructor
23. **[TypeAlias](TypeAlias/)** — give an existing type a second name to make a signature read clearly
24. **[Enum](Enum/)** — name a fixed set of cases, and give the enum an explicit underlying type
25. **[Variant](Variant/)** — attach data to each case, and destructure it in a `match` arm
26. **[Union](Union/)** — overlay one piece of storage with several types, and why that needs care
27. **[Interface](Interface/)** — implement `Display`, `Equatable`, and `Comparable` for a type of your own
28. **[Overloading](Overloading/)** — define `==`, `+` and the other operators for your own type
29. **[Iterator](Iterator/)** — implement `Iterator` so a type of your own can be used with `for`

**VI. Errors**

30. **[Option](Option/)** — represent a value that may be absent, and supply a default when it is
31. **[Result](Result/)** — return either a value or an error, and pass failures up to the caller
32. **[Propagate](Propagate/)** — hand a failure straight to the caller with `?` instead of matching it

**VII. Memory**

33. **[Memory](Memory/)** — allocate, use and free memory by hand (`Alloc`, `Zero`, `Free`)
34. **[Pointer](Pointer/)** — the difference between `*T` and `*var T`, and detecting overflow through an out-parameter
35. **[Ownership](Ownership/)** — copying, transferring with `<-`, and the destructor that runs when a value goes out of scope
36. **[Defer](Defer/)** — schedule cleanup at the point you allocate, so it cannot be forgotten
37. **[Allocator](Allocator/)** — allocate from an arena or a box instead of straight from the system

**VIII. Text and input**

38. **String** — build and inspect text, and tell a length in bytes from a length in characters
39. **[Circle](Circle/)** — read a line from the console, parse it to a number, and match on the result
40. **Format** — control width, alignment, precision, and number base when formatting values
41. **Unicode** — code points, grapheme clusters, and case conversion beyond ASCII

**IX. Collections**

42. **Vector** — a growable array that manages its own memory and capacity
43. **Deque** — add and remove at both ends, and see where that beats a vector
44. **HashMap** — look values up by key, and test membership with a hash set
45. **TreeMap** — keep keys in order, and weigh the cost against hashing
46. **Algorithm** — sort, search, and fold over the containers built so far

**X. Files**

47. **File** — write text to a file and read it back, handling failure at every step
48. **Binary** — read and write fixed-width values and raw bytes, including byte order
49. **Directory** — create, list, and remove directories, and read file metadata
50. **Path** — join and split paths, and see why a path is not a string

**XI. Compile-time programming**

51. **[Version](Version/)** — select code at compile time with `when` and the compiler version
52. **Config** — read build configuration at compile time and reject an unsupported one

### Track B — Platform and packages

Each assumes all of Track A, but none assumes another, so they can be read in any order.

53. **[Extern](Extern/)** — call a platform API directly through an extern declaration and `#Link`
54. **Asm** — write a function body in assembly, choose its ABI, and select one per architecture
55. **Math** — roots, powers, logarithms, trigonometry, and rounding
56. **Time** — measure elapsed time, work with durations, and format a calendar date
57. **Random** — seed a generator, draw from a range, and sample from a sequence
58. **Json** — parse JSON into a value, walk it, and write it back out

### Track C — Small programs

Complete programs rather than feature tours, each built only from what came before.

59. **Quadratic** — solve a quadratic equation, and handle the cases the discriminant decides
60. **Prime** — find the primes below a limit with a sieve
61. **Statistics** — compute the mean, spread, and extremes of a set of numbers
62. **Guess** — a number guessing game that keeps asking until you get it
63. **Age** — work out someone's age from their date of birth, in years, months and days
64. **Melody** — play a tune through the console speaker with the platform's beep
65. **Password** — build a random password by drawing letters and digits from an alphabet
66. **[Thanks](Thanks/)** — draw RUX as an ASCII banner and thank everyone who helps build it
67. **[Launch](Launch/)** — a countdown, a launch, and some jokes at the language's expense

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

To check every example in the repository at once, from the root:

```sh
./Check.ps1
```

## License

Licensed under the [MIT License](LICENSE.md).
