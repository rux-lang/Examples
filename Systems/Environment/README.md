# Environment

Read the program's command-line arguments with `ArgumentCount`, `Argument` and `Arguments`, set,
read and remove environment variables with `SetVariable`, `Variable` and `RemoveVariable`, walk
them all with `Environment`, and end early with a status through `Exit`.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Guard](https://rux-lang.dev/docs/learn/guard), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum), [Path](https://rux-lang.dev/docs/learn/path)

```sh
rux run
```

```text
arguments     0
program       Environment
LESSON_COLOUR is not set
LESSON_COLOUR = "teal"
LESSON_COLOUR = ""
found in walk true
any at all    true
LESSON_COLOUR is not set
LESSON=COLOUR refused as invalid input
process id    14624
```

The process id on the last line is different on every run. Run `rux run -- --quit` to see the
program list its arguments and end early with exit status 3.

Read the lesson: https://rux-lang.dev/docs/learn/environment
