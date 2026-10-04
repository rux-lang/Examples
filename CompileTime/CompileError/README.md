# CompileError

Stop a build with `#Error`, raise a warning with `#Warn`, and silence one lint rule with `#Allow`.

**You'll need:** [When](https://rux-lang.dev/docs/learn/when), [Target](https://rux-lang.dev/docs/learn/target), [Tooling](https://rux-lang.dev/docs/learn/tooling)

```sh
rux run
```

The build prints the warning that `#Warn` asked for, then the program runs:

```text
Src\Main.rux:38:48: warning: Average rounds toward zero; call AverageRounded instead
  38 |     PrintLine("Average of 7 and 8: {}", Average(15, 2));
     |                                                ^
  note: compiler phase: Analyzing
Average of 7 and 8: 7
Rounded average: 8
A 3 kB file holds 3000 bytes
```

The compiler prints the file's full path where this shows `Src\Main.rux`.

Read the lesson: https://rux-lang.dev/docs/learn/compile-error
