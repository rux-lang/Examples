# Launch

Run a mission checklist, ask for a countdown from 1 to 10, count down and launch a rocket up the
terminal.

**You'll need:** Parts 1–20 — this project is a checkpoint for Utilities, and leans on [Input](https://rux-lang.dev/docs/learn/input), [Parse](https://rux-lang.dev/docs/learn/parse) and [Stopwatch](https://rux-lang.dev/docs/learn/stopwatch).

```sh
rux run
```

A sample session. An answer outside 1 to 10 is asked again, and an empty line counts down from
10:

```text
🚀  RUX MISSION CONTROL  🚀
========================
  fuel ............. loaded  ✅
  crew ............. strapped in  ✅
  weather .......... clear skies  ✅
  snacks ........... dangerously low  ✅
  borrow checker ... satisfied  ✅

Count down from? (1 to 10, Enter for 10) 20
Mission rules allow 1 to 10. Say again?
Count down from? (1 to 10, Enter for 10) 3

   T minus 3...
   T minus 2...
   T minus 1...
   🔥 IGNITION 🔥
                🚀
              🚀
            🚀
          🚀
        🚀
      🚀
    🚀
  🚀

   ⭐  🌍  ⭐
   Liftoff! The crew waves from the window.  👋
```

The answer can be piped in. With no input at all, nobody gave the go, and after the checklist
the run ends with:

```sh
"3" | rux run
$null | rux run
```

```text
Count down from? (1 to 10, Enter for 10) 
No go from the flight director. Mission scrubbed.  🛑
```

Read the project: https://rux-lang.dev/docs/learn/launch
