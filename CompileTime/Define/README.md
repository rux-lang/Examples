# Define

Hand a build your own named values with `--define`, and read them while compiling with `#config.Has` and `#config.Get`.

**You'll need:** [When](https://rux-lang.dev/docs/learn/when), [BuildMode](https://rux-lang.dev/docs/learn/build-mode)

```sh
rux run
```

```text
Hello, World!
Verbose is off; rebuild with --define Verbose to turn it on
An undefined name reads as 0 characters
```

```sh
rux run --define Name=Ada --define Verbose
```

```text
Hello, Ada!
Verbose is on (its value is "true")
An undefined name reads as 0 characters
```

Read the lesson: https://rux-lang.dev/docs/learn/define
