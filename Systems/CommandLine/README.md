# CommandLine

Describe a command's options, positional arguments and subcommands as a `CommandSpec`, check
argument lists against it with `Parse` and `ParseProcess`, ask the result with `Has`, `Count`,
`Integer` and `Positional`, report a `CommandLineError`, and print the help text the description
writes for free.

**You'll need:** [Environment](https://rux-lang.dev/docs/learn/environment), [Pointer](https://rux-lang.dev/docs/learn/pointer), [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice), [InterfaceParameter](https://rux-lang.dev/docs/learn/interface-parameter)

```sh
rux run
```

```text
$ todo add milk
  add [milk] priority 3, verbosity 0
$ todo -vv add --priority=1 milk shop home
  add [milk] priority 1, verbosity 2
  tag shop
  tag home
$ todo list -a home
  list, all true, filter [home]
$ todo add -p high milk
  error: invalid value 'high' for 'priority'
$ todo add
  error: missing argument <title>
$ todo add -x milk
  error: unknown option '-x'
$ todo remove milk
  error: unknown command 'remove'
$ todo list home work
  error: unexpected argument 'work'
$ todo --help
Keeps a to-do list

Usage: todo [options] <command>

Options:
  -v, --verbose  Say more; repeat for even more
  -h, --help     Print this help
  -V, --version  Print the version

Commands:
  add   Add an item
  list  Show the items
$ todo add -h
Add an item

Usage: todo add [options] <title> [tags...]

Arguments:
  <title>    What to do
  [tags...]  Words to file it under

Options:
  -p, --priority <N>  How urgent, 1 to 5
  -h, --help          Print this help
$ todo
error: a command is required
Usage: todo [options] <command>
```

Read the lesson: https://rux-lang.dev/docs/learn/command-line
