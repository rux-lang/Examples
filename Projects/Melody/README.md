# Melody

Play the opening of Ode to Joy through the console speaker by calling the Windows `Beep`
function directly.

**You'll need:** Parts 1–24 — this project is the checkpoint for Platform, and leans on [Extern](https://rux-lang.dev/docs/learn/extern), [Target](https://rux-lang.dev/docs/learn/target) and [CompileError](https://rux-lang.dev/docs/learn/compile-error).

**Windows only.** On any other system the build stops with an error that says so.

```sh
rux run
```

Each note name is printed as it plays, and the tune lasts about six seconds:

```text
Ode to Joy, through the console speaker:
E E F G G F E D C C D E E D D
```

Read the project: https://rux-lang.dev/docs/learn/melody
