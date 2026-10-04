# Rux Examples

Example projects and programming tutorials for the [Rux](https://rux-lang.dev) language.

## The Course

The course is read in order: each lesson is one package that teaches one idea, and assumes
only the lessons before it. Each lesson has a page at `https://rux-lang.dev/docs/learn/<lesson>`.
Parts 1–17 build the language step by step; Parts 18–24 tour the standard packages and can be
read in any order once their prerequisites are done; Part 25 holds complete small programs.

### 1. Basics

First programs: printing, values and their types.

- 1.1 **[Hello](Basics/Hello/)** — print "Hello, World!", the minimal Rux application
- 1.3 **[Variable](Basics/Variable/)** — name a value with `let`, and let the compiler infer its type
- 1.10 **[Console](Basics/Console/)** — write to the console with `Print` and `PrintLine`, and fill `{}` placeholders
- 1.11 **[Const](Basics/Const/)** — name a value the compiler folds in, and see where it differs from `let`
- 1.12 **[Convert](Basics/Convert/)** — convert between numeric types with `as`, and see what a value that does not fit becomes
- **[Primitive](Basics/Primitive/)** — declare and print every primitive type, from `int8` to `char32` _(being split into the lessons above)_

### 2. Operators

Combining values into new ones.

- **[Operator](Operators/Operator/)** — arithmetic, comparison, logical, and bitwise operators, and their precedence _(being split into the lessons above)_

### 3. Control flow

Choosing and repeating.

- 3.1 **[If](ControlFlow/If/)** — run code only when a condition holds, with `if` and `else`
- 3.3 **[Ternary](ControlFlow/Ternary/)** — pick one of two values inside an expression with `? :`
- 3.6 **[Loop](ControlFlow/Loop/)** — repeat forever with `loop` until a `break` leaves
- 3.9 **[Range](ControlFlow/Range/)** — describe a run of numbers with `..` and `..=`
- 3.12 **[Match](ControlFlow/Match/)** — select a branch by value with `match`, and default with `else`

### 4. Functions

Naming a piece of work and reusing it.

- 4.1 **[Function](Functions/Function/)** — declare functions with parameters and a return value, and call them
- 4.4 **[Overload](Functions/Overload/)** — give several functions one name, and let the arguments choose between them
- 4.6 **[Generic](Functions/Generic/)** — write one function that works for many types
- 4.7 **[Callback](Functions/Callback/)** — pass a function to another function as an ordinary value

### 5. Sequences

Many values of one type, and groups of values of different types.

- 5.1 **[Array](Sequences/Array/)** — an inline array holding a fixed number of values of one type
- 5.4 **[Slice](Sequences/Slice/)** — view part of an array without copying it, and pass it to a function
- 5.6 **[Variadic](Sequences/Variadic/)** — accept any number of arguments, the way `PrintLine` does
- 5.7 **[Tuple](Sequences/Tuple/)** — group a few values without declaring a type, and return more than one result

### 6. Types

Declaring types of your own.

- 6.1 **[Struct](Types/Struct/)** — group related values into a struct with named fields
- 6.8 **[Enum](Types/Enum/)** — name a fixed set of cases
- 6.10 **[Variant](Types/Variant/)** — attach data to each case
- 6.12 **[TypeAlias](Types/TypeAlias/)** — give an existing type a second name to make a signature read clearly

### 8. Optionals

A value that may be absent: `T?`.

- 8.1 **[Optional](Optionals/Optional/)** — a value that may be missing: `int?` and `none`

### 9. Errors

Operations that can fail: `T ! E`.

- 9.1 **[Fallible](Errors/Fallible/)** — return either a value or an error with `T ! E`
- 9.8 **[Propagate](Errors/Propagate/)** — hand a failure straight to the caller with `?` instead of matching it

### 11. Ownership

Who owns a value, and when it is cleaned up.

- 11.8 **[Defer](Ownership/Defer/)** — schedule cleanup at the point you start the work, so it cannot be forgotten
- **[Ownership](Ownership/Ownership/)** — copying, transferring with `<-`, and the destructor that runs when a value goes out of scope _(being split into the lessons above)_

### 12. Interfaces

Describing behaviour that many types share.

- 12.1 **[Interface](Interfaces/Interface/)** — declare an interface and implement it for your own types
- 12.8 **[OperatorOverload](Interfaces/OperatorOverload/)** — define `==`, `+` and the other operators for your own type
- 12.11 **[Iterator](Interfaces/Iterator/)** — implement `Next` so a type of your own can be used with `for`

### 14. Text

Strings, characters, formatting, parsing and input.

- 14.4 **[String](Text/String/)** — own text that lives as long as you need it
- 14.7 **[Unicode](Text/Unicode/)** — bytes, code points and grapheme clusters, and why their counts differ
- 14.9 **[Format](Text/Format/)** — control width and alignment when formatting values

### 15. Memory

Pointers, raw memory and allocators.

- 15.1 **[Pointer](Memory/Pointer/)** — the difference between `*T` and `*var T`, and taking an address with `@`
- 15.3 **[Memory](Memory/)** — allocate, use and free memory by hand (`Alloc`, `Zero`, `Free`)
- 15.8 **[Union](Union/)** — overlay one piece of storage with several types, and why that needs care
- 15.9 **[Allocator](Allocator/)** — allocate through the `Allocator` interface instead of straight from the system

### 16. Numbers

Numbers in depth.

- 16.11 **[Math](Math/)** — roots, powers, logarithms, trigonometry, and rounding

### 17. Collections

Containers from the `Collections` package.

- 17.1 **[Vector](Vector/)** — a growable array that manages its own memory and capacity
- 17.3 **[Deque](Deque/)** — add and remove at both ends, and see where that beats a vector
- 17.4 **[HashMap](HashMap/)** — look values up by key
- 17.6 **[TreeMap](TreeMap/)** — keep keys in order, and walk them in order

### 18. Algorithms

Algorithms over slices from the `Algorithms` package.

- **[Algorithm](Algorithm/)** — sort, search, and fold over the containers built so far _(being split into the lessons above)_

### 19. Files

Paths, files and directories.

- 19.1 **[Path](Path/)** — split a path into its parts, and see why a path is not a string
- 19.4 **[File](File/)** — write text to a file and read it back, handling failure at every step
- 19.5 **[Directory](Directory/)** — create, list, and remove directories
- 19.7 **[Binary](Binary/)** — read and write fixed-width values and raw bytes

### 20. Utilities

Time, randomness, hashing and identifiers.

- 20.5 **[Random](Random/)** — a reproducible random number generator
- **[Time](Time/)** — measure elapsed time, work with durations, and format a calendar date _(being split into the lessons above)_

### 21. Data formats

Reading and writing JSON and TOML.

- 21.1 **[Json](Json/)** — parse JSON into a value and walk it

### 22. Packages

Modules, packages, libraries and tools.

- 22.1 **[Module](Module/)** — split a package across source files and modules

### 23. Compile time

Code that runs or is chosen while compiling.

- 23.1 **[Version](Version/)** — select code at compile time with `when`
- **[Config](Config/)** — read the build's target, profile and source location at compile time _(being split into the lessons above)_

### 24. Platform

Talking to the operating system and the machine.

- 24.1 **[Extern](Extern/)** — call a platform API directly through an extern declaration and `#Link`
- 24.4 **[Asm](Asm/)** — write a function body in assembly

### 25. Projects

Complete small programs. Each one needs only the parts before its checkpoint.

- 25.1 **[Thanks](Thanks/)** — draw RUX as an ASCII banner and thank everyone who helps build it _(after Control flow)_
- 25.4 **[Prime](Prime/)** — find the primes below a limit with a sieve _(after Sequences)_
- 25.6 **[Circle](Circle/)** — read a radius, check it, and print the circle's measurements _(after Text)_
- 25.7 **[Quadratic](Quadratic/)** — solve a quadratic equation, and handle the cases the discriminant decides _(after Text)_
- 25.10 **[Statistics](Statistics/)** — compute the mean, spread, and extremes of a set of numbers _(after Algorithms)_
- 25.11 **[Guess](Guess/)** — a number guessing game with seven tries _(after Utilities)_
- 25.12 **[Age](Age/)** — work out someone's age from their date of birth, in years, months and days _(after Utilities)_
- 25.13 **[Password](Password/)** — build a random password by drawing letters and digits from an alphabet _(after Utilities)_
- 25.14 **[Launch](Launch/)** — a countdown and a launch _(after Utilities)_
- 25.16 **[Melody](Melody/)** — play a tune through the console speaker with the platform's beep _(after Platform)_

## Running an Example

Each example is a standalone Rux package with its own `Rux.toml`, and requires Rux 0.4.0 or newer.

```sh
cd Basics/Hello
rux run
```

If necessary, install the dependencies first with `rux install`. To type-check an example
without running it, use `rux check`.

To check every example in the repository at once, from the root:

```sh
./Check.ps1
```

## License

Licensed under the [MIT License](LICENSE.md).
