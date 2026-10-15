# ChildProcess

Start another program with a `Command`: `Run` it and read its `ExitStatus`, `Capture` its output
and error streams, give it an environment variable of its own, talk to it through pipes with
`Spawn`, check on it with `TryWait` and end it with `Kill`. The program plays the child itself, so
it runs the same on every system.

**You'll need:** [Environment](https://rux-lang.dev/docs/learn/environment), [Move](https://rux-lang.dev/docs/learn/move), [Input](https://rux-lang.dev/docs/learn/input), [Catch](https://rux-lang.dev/docs/learn/catch)

```sh
rux run
```

```text
fail:   success false, code 7
greet:  success true
        output [hello from the child]
        error  [and a note on standard error]
colour: the child saw [teal]
        this process sees []
shout:  QUIET WORDS
shout:  STILL QUIET
        success true
wait:   finished yet? false
        killed, success false
missing: not found? true
```

Read the lesson: https://rux-lang.dev/docs/learn/child-process
