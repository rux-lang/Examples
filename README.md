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
- 1.2 **[Comment](Basics/Comment/)** — explain code with `//` and `/* */` comments, which can nest
- 1.3 **[Variable](Basics/Variable/)** — name a value with `let`, and let the compiler infer its type
- 1.4 **[Mutable](Basics/Mutable/)** — declare a binding with `var` so it can be reassigned
- 1.5 **[Integer](Basics/Integer/)** — whole numbers: signed and unsigned widths, `int` and `uint`
- 1.6 **[Float](Basics/Float/)** — fractional numbers: `float32`, `float64`, and why `0.1 + 0.2` is not `0.3`
- 1.7 **[Boolean](Basics/Boolean/)** — `true`, `false` and the `bool` type
- 1.8 **[Character](Basics/Character/)** — single characters, character literals and the `char` type
- 1.9 **[Literal](Basics/Literal/)** — write numbers in other bases, with separators and suffixes
- 1.10 **[Console](Basics/Console/)** — write to the console with `Print` and `PrintLine`, and fill `{}` placeholders
- 1.11 **[Const](Basics/Const/)** — name a value the compiler folds in, and see where it differs from `let`
- 1.12 **[Convert](Basics/Convert/)** — convert between numeric types with `as`, and see what a value that does not fit becomes

### 2. Operators

Combining values into new ones.

- 2.1 **[Arithmetic](Operators/Arithmetic/)** — add, subtract, multiply, divide and take the remainder
- 2.2 **[Comparison](Operators/Comparison/)** — compare two values with `==`, `!=`, `<`, `<=`, `>` and `>=`
- 2.3 **[Logical](Operators/Logical/)** — combine conditions with `&&`, `
- 2.4 **[Assignment](Operators/Assignment/)** — update a variable in place with `+=`, `-=`, `++` and friends
- 2.5 **[Precedence](Operators/Precedence/)** — which operator binds first, and how parentheses change it

### 3. Control flow

Choosing and repeating.

- 3.1 **[If](ControlFlow/If/)** — run code only when a condition holds, with `if` and `else`
- 3.2 **[ElseIf](ControlFlow/ElseIf/)** — choose one of several branches with an `else if` chain
- 3.3 **[Ternary](ControlFlow/Ternary/)** — pick one of two values inside an expression with `? :`
- 3.4 **[While](ControlFlow/While/)** — repeat while a condition holds — possibly zero times
- 3.5 **[DoWhile](ControlFlow/DoWhile/)** — run the body first and test afterwards, so it runs at least once
- 3.6 **[Loop](ControlFlow/Loop/)** — repeat forever with `loop` until a `break` leaves
- 3.7 **[Break](ControlFlow/Break/)** — leave a loop early when the answer is found
- 3.8 **[Continue](ControlFlow/Continue/)** — skip the rest of one iteration and carry on with the next
- 3.9 **[Range](ControlFlow/Range/)** — describe a run of numbers with `..` and `..=`
- 3.10 **[For](ControlFlow/For/)** — walk a range with `for`
- 3.11 **[Label](ControlFlow/Label/)** — name a loop, so `break` can leave an outer one
- 3.12 **[Match](ControlFlow/Match/)** — select a branch by value with `match`, and default with `else`
- 3.13 **[MatchExpression](ControlFlow/MatchExpression/)** — use `match` as a value, not only as a statement

### 4. Functions

Naming a piece of work and reusing it.

- 4.1 **[Function](Functions/Function/)** — declare functions with parameters and a return value, and call them
- 4.2 **[Return](Functions/Return/)** — return early, and write functions that return nothing
- 4.3 **[Recursion](Functions/Recursion/)** — a function that calls itself, and the base case that stops it
- 4.4 **[Overload](Functions/Overload/)** — give several functions one name, and let the arguments choose between them
- 4.5 **[DefaultArgument](Functions/DefaultArgument/)** — give a parameter a default value so callers may leave it out
- 4.6 **[Generic](Functions/Generic/)** — write one function that works for many types
- 4.7 **[Callback](Functions/Callback/)** — pass a function to another function as an ordinary value

### 5. Sequences

Many values of one type, and groups of values of different types.

- 5.1 **[Array](Sequences/Array/)** — an inline array holding a fixed number of values of one type
- 5.2 **[ArrayRepeat](Sequences/ArrayRepeat/)** — fill an array with one repeated value: `[0; 16]`
- 5.3 **[ArrayNested](Sequences/ArrayNested/)** — arrays of arrays: a grid with rows and columns
- 5.4 **[Slice](Sequences/Slice/)** — view part of an array without copying it, and pass it to a function
- 5.5 **[WritableSlice](Sequences/WritableSlice/)** — change an array through a `var T[..]` view
- 5.6 **[Variadic](Sequences/Variadic/)** — accept any number of arguments, the way `PrintLine` does
- 5.7 **[Tuple](Sequences/Tuple/)** — group a few values without declaring a type, and return more than one result
- 5.8 **[Destructure](Sequences/Destructure/)** — unpack a tuple into separate names with `let (x, y) = ...`

### 6. Types

Declaring types of your own.

- 6.1 **[Struct](Types/Struct/)** — group related values into a struct with named fields
- 6.2 **[Reference](Types/Reference/)** — borrow a value with `&T` instead of copying it
- 6.3 **[MutableReference](Types/MutableReference/)** — let a function change the caller's value through `&var T`
- 6.4 **[Method](Types/Method/)** — give a struct behaviour with `extend` and a `self` receiver
- 6.5 **[MutatingMethod](Types/MutatingMethod/)** — a method that changes its receiver through `self: &var T`
- 6.6 **[Constructor](Types/Constructor/)** — build a valid value in one place with a constructor
- 6.7 **[Extension](Types/Extension/)** — add methods to a type you did not write
- 6.8 **[Enum](Types/Enum/)** — name a fixed set of cases
- 6.9 **[EnumValue](Types/EnumValue/)** — give an enum an explicit underlying type and convert to and from it
- 6.10 **[Variant](Types/Variant/)** — attach data to each case
- 6.11 **[VariantMatch](Types/VariantMatch/)** — take a variant apart in a `match` arm
- 6.12 **[TypeAlias](Types/TypeAlias/)** — give an existing type a second name to make a signature read clearly
- 6.13 **[FunctionField](Types/FunctionField/)** — store a function in a struct field and call it later

### 7. Patterns

Everything a `match` arm can say.

- 7.1 **[Guard](Patterns/Guard/)** — add an `if` condition to a match arm
- 7.2 **[RangePattern](Patterns/RangePattern/)** — match a whole range of numbers in one arm
- 7.4 **[StructPattern](Patterns/StructPattern/)** — take a struct-shaped variant case apart by field name
- 7.5 **[CharacterPattern](Patterns/CharacterPattern/)** — match single characters
- 7.6 **[Exhaustive](Patterns/Exhaustive/)** — why a match on a variant must cover every case, and when `else` is needed

### 8. Optionals

A value that may be absent: `T?`.

- 8.1 **[Optional](Optionals/Optional/)** — a value that may be missing: `int?` and `none`
- 8.2 **[Presence](Optionals/Presence/)** — match an optional with `value?` and `none` arms
- 8.3 **[Coalesce](Optionals/Coalesce/)** — supply a fallback for a missing value with `??`
- 8.4 **[CoalesceExit](Optionals/CoalesceExit/)** — leave with `?? return`, `?? continue` or `?? break` when a value is missing
- 8.5 **[OptionalPropagate](Optionals/OptionalPropagate/)** — pass absence to the caller with `?`
- 8.6 **[NestedOptional](Optionals/NestedOptional/)** — `int??`: telling "nothing found" from "found nothing"

### 9. Errors

Operations that can fail: `T ! E`.

- 9.1 **[Fallible](Errors/Fallible/)** — return either a value or an error with `T ! E`
- 9.2 **[Fail](Errors/Fail/)** — report a failure with `fail`
- 9.3 **[UnitFallible](Errors/UnitFallible/)** — a function that returns nothing but can still fail: `! E`
- 9.4 **[Outcome](Errors/Outcome/)** — match a result as `.Success` or `.Failure`
- 9.5 **[Discard](Errors/Discard/)** — why the compiler refuses to let a result be ignored, and how to discard one on purpose
- 9.6 **[Catch](Errors/Catch/)** — handle the ways an operation can fail with `catch`
- 9.7 **[CatchFallback](Errors/CatchFallback/)** — turn any failure into a default value with `catch { else => ... }`
- 9.8 **[Propagate](Errors/Propagate/)** — hand a failure straight to the caller with `?` instead of matching it
- 9.9 **[ErrorVariant](Errors/ErrorVariant/)** — describe the ways an operation can fail with a variant
- 9.10 **[ErrorMapping](Errors/ErrorMapping/)** — add context to an error as it passes through with `? else (e => ...)`
- 9.11 **[ErrorSum](Errors/ErrorSum/)** — fail in more than one way with an error sum `A 
- 9.12 **[FallibleMain](Errors/FallibleMain/)** — let `Main` itself fail, and see the exit status
- 9.13 **[AbsenceToError](Errors/AbsenceToError/)** — turn a missing value into a failure with `?? fail`
- 9.14 **[NestedFallible](Errors/NestedFallible/)** — results inside results: `T? ! E` and `(T ! E1) ! E2`
- 9.15 **[Panic](Errors/Panic/)** — stop the program when something impossible happens
- 9.16 **[Assert](Errors/Assert/)** — check an assumption while the program runs

### 10. Sum types

A value that is one of several types: `A | B`.

- 10.1 **[SumType](SumTypes/SumType/)** — a value that can be an `int32` or a `bool`: `int32 
- 10.2 **[TypedPattern](SumTypes/TypedPattern/)** — match a sum by the type it holds
- 10.3 **[SubsetPattern](SumTypes/SubsetPattern/)** — match several members of a sum in one arm
- 10.4 **[Is](SumTypes/Is/)** — ask which type a sum holds with `is`
- 10.5 **[SumWidening](SumTypes/SumWidening/)** — pass a smaller sum where a larger one is expected

### 11. Ownership

Who owns a value, and when it is cleaned up.

- 11.1 **[Exclusivity](Ownership/Exclusivity/)** — one writer at a time: the rule that keeps borrows safe
- 11.2 **[Copy](Ownership/Copy/)** — assignment copies a value, and the copies are independent
- 11.3 **[Move](Ownership/Move/)** — hand a value over with `<-` instead of copying it
- 11.4 **[Destructor](Ownership/Destructor/)** — run cleanup when a value goes out of scope with `~T`
- 11.5 **[NoCopy](Ownership/NoCopy/)** — forbid copying a type that owns a resource
- 11.6 **[CustomCopy](Ownership/CustomCopy/)** — write your own copy for a type that needs real work to duplicate
- 11.8 **[Defer](Ownership/Defer/)** — schedule cleanup at the point you start the work, so it cannot be forgotten
- **[Ownership](Ownership/Ownership/)** — copying, transferring with `<-`, and the destructor that runs when a value goes out of scope _(being split into the lessons above)_

### 12. Interfaces

Describing behaviour that many types share.

- 12.1 **[Interface](Interfaces/Interface/)** — declare an interface and implement it for your own types
- 12.2 **[InterfaceValue](Interfaces/InterfaceValue/)** — hold any implementing type in one interface value
- 12.3 **[InterfaceParameter](Interfaces/InterfaceParameter/)** — write a function that accepts any type implementing an interface
- 12.4 **[Display](Interfaces/Display/)** — make your own type printable with `{}`
- 12.5 **[Equatable](Interfaces/Equatable/)** — define what it means for two of your values to be equal
- 12.6 **[Comparable](Interfaces/Comparable/)** — define an order for your own type
- 12.7 **[StructuralEquality](Interfaces/StructuralEquality/)** — compare whole structs and tuples with `==`
- 12.8 **[OperatorOverload](Interfaces/OperatorOverload/)** — define `==`, `+` and the other operators for your own type
- 12.9 **[DerivedOperator](Interfaces/DerivedOperator/)** — define one operator and get its partners for free
- 12.10 **[Indexer](Interfaces/Indexer/)** — let your own type be indexed with `[]`
- 12.11 **[Iterator](Interfaces/Iterator/)** — implement `Next` so a type of your own can be used with `for`
- 12.12 **[Iterable](Interfaces/Iterable/)** — let a container hand out an iterator for `for`

### 13. Generics

Types and functions that work for many types.

- 13.1 **[GenericType](Generics/GenericType/)** — a struct with a type parameter: `Pair<T>`
- 13.2 **[GenericMethod](Generics/GenericMethod/)** — methods on a generic type, and methods with type parameters of their own
- 13.3 **[GenericBound](Generics/GenericBound/)** — require a type parameter to implement an interface
- 13.4 **[MultipleBounds](Generics/MultipleBounds/)** — require several interfaces at once with `A + B`
- 13.5 **[GenericOutcome](Generics/GenericOutcome/)** — write helpers that work for any optional or result
- 13.6 **[GenericSum](Generics/GenericSum/)** — generic sums, and what happens when both members are the same type

### 14. Text

Strings, characters, formatting, parsing and input.

- 14.4 **[String](Text/String/)** — own text that lives as long as you need it
- 14.7 **[Unicode](Text/Unicode/)** — bytes, code points and grapheme clusters, and why their counts differ
- 14.9 **[Format](Text/Format/)** — control width and alignment when formatting values

### 15. Memory

Pointers, raw memory and allocators.

- 15.1 **[Pointer](Memory/Pointer/)** — the difference between `*T` and `*var T`, and taking an address with `@`
- 15.3 **[RawMemory](Memory/RawMemory/)** — allocate, use and free memory by hand (`Alloc`, `Zero`, `Free`)
- 15.8 **[Union](Memory/Union/)** — overlay one piece of storage with several types, and why that needs care
- 15.9 **[Allocator](Memory/Allocator/)** — allocate through the `Allocator` interface instead of straight from the system

### 16. Numbers

Numbers in depth.

- 16.11 **[Math](Numbers/Math/)** — roots, powers, logarithms, trigonometry, and rounding

### 17. Collections

Containers from the `Collections` package.

- 17.1 **[Vector](Collections/Vector/)** — a growable array that manages its own memory and capacity
- 17.2 **[DynamicArray](Collections/DynamicArray/)** — `Collections::Array`, and how it differs from an inline array
- 17.3 **[Deque](Collections/Deque/)** — add and remove at both ends, and see where that beats a vector
- 17.4 **[HashMap](Collections/HashMap/)** — look values up by key
- 17.5 **[HashSet](Collections/HashSet/)** — test membership with a hash set
- 17.6 **[TreeMap](Collections/TreeMap/)** — keep keys in order, and walk them in order
- 17.7 **[TreeSet](Collections/TreeSet/)** — keep a set of values in order

### 18. Algorithms

Algorithms over slices from the `Algorithms` package.

- 18.1 **[Sort](Algorithms/Sort/)** — sort a slice in place
- 18.2 **[Search](Algorithms/Search/)** — find a value in a slice, and handle not finding it
- 18.3 **[BinarySearch](Algorithms/BinarySearch/)** — find a value in sorted data quickly
- 18.4 **[MinMax](Algorithms/MinMax/)** — the smallest and largest values, and the empty case
- 18.5 **[Fold](Algorithms/Fold/)** — combine all elements into one value with a function

### 19. Files

Paths, files and directories.

- 19.1 **[Path](Files/Path/)** — split a path into its parts, and see why a path is not a string
- 19.4 **[File](Files/File/)** — write text to a file and read it back, handling failure at every step
- 19.5 **[Directory](Files/Directory/)** — create, list, and remove directories
- 19.7 **[Binary](Files/Binary/)** — read and write fixed-width values and raw bytes

### 20. Utilities

Time, randomness, hashing and identifiers.

- 20.5 **[Random](Utilities/Random/)** — a reproducible random number generator
- **[Time](Utilities/Time/)** — measure elapsed time, work with durations, and format a calendar date _(being split into the lessons above)_

### 21. Data formats

Reading and writing JSON and TOML.

- 21.1 **[Json](DataFormats/Json/)** — parse JSON into a value and walk it

### 22. Packages

Modules, packages, libraries and tools.

- 22.1 **[Module](Packages/Module/)** — split a package across source files and modules

### 23. Compile time

Code that runs or is chosen while compiling.

- 23.1 **[When](CompileTime/When/)** — select code at compile time with `when`
- **[Config](CompileTime/Config/)** — read the build's target, profile and source location at compile time _(being split into the lessons above)_

### 24. Platform

Talking to the operating system and the machine.

- 24.1 **[Extern](Platform/Extern/)** — call a platform API directly through an extern declaration and `#Link`
- 24.4 **[Asm](Platform/Asm/)** — write a function body in assembly

### 25. Projects

Complete small programs. Each one needs only the parts before its checkpoint.

- 25.1 **[Thanks](Projects/Thanks/)** — draw RUX as an ASCII banner and thank everyone who helps build it _(after Control flow)_
- 25.4 **[Prime](Projects/Prime/)** — find the primes below a limit with a sieve _(after Sequences)_
- 25.6 **[Circle](Projects/Circle/)** — read a radius, check it, and print the circle's measurements _(after Text)_
- 25.7 **[Quadratic](Projects/Quadratic/)** — solve a quadratic equation, and handle the cases the discriminant decides _(after Text)_
- 25.10 **[Statistics](Projects/Statistics/)** — compute the mean, spread, and extremes of a set of numbers _(after Algorithms)_
- 25.11 **[Guess](Projects/Guess/)** — a number guessing game with seven tries _(after Utilities)_
- 25.12 **[Age](Projects/Age/)** — work out someone's age from their date of birth, in years, months and days _(after Utilities)_
- 25.13 **[Password](Projects/Password/)** — build a random password by drawing letters and digits from an alphabet _(after Utilities)_
- 25.14 **[Launch](Projects/Launch/)** — a countdown and a launch _(after Utilities)_
- 25.16 **[Melody](Projects/Melody/)** — play a tune through the console speaker with the platform's beep _(after Platform)_

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
