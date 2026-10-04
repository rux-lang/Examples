# Guess

A number guessing game: find a number from 1 to 100 in seven guesses, with a hint after each
one.

**You'll need:** Parts 1–20 — this project is a checkpoint for Utilities, and leans on [Entropy](https://rux-lang.dev/docs/learn/entropy), [Input](https://rux-lang.dev/docs/learn/input) and [Parse](https://rux-lang.dev/docs/learn/parse).

```sh
rux run
```

A sample game. The number is different every run, and text that is not a number from 1 to 100
does not use up a guess:

```text
I am thinking of a number from 1 to 100. You have 7 guesses.
guess 1: fifty
That is not a number. It does not count; try again.
guess 1: 50
higher
guess 2: 75
higher
guess 3: 88
lower
guess 4: 81
higher
guess 5: 84
Yes, 84! Found in 5 of 7 guesses.
```

Ending the input (Ctrl+Z and Enter on Windows, Ctrl+D elsewhere) leaves the game and reveals the
number. Piped input works too, though the guesses cannot react to the hints:

```sh
1..7 | rux run
```

```text
I am thinking of a number from 1 to 100. You have 7 guesses.
guess 1: higher
guess 2: higher
guess 3: higher
guess 4: higher
guess 5: higher
guess 6: higher
guess 7: higher
Out of guesses. It was 78.
```

Read the project: https://rux-lang.dev/docs/learn/guess
