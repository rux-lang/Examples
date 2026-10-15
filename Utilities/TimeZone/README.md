# TimeZone

Build time zones from POSIX `TZ` rules with `TimeZone::FromRule`, read one moment on several
clocks with `StateAt` and `ToLocal`, and turn a local time back into a moment with `Resolve`,
which tells a time that happened once from one that happened twice or never.

**You'll need:** [DateTime](https://rux-lang.dev/docs/learn/date-time), [Allocator](https://rux-lang.dev/docs/learn/allocator), [Move](https://rux-lang.dev/docs/learn/move), [Enum](https://rux-lang.dev/docs/learn/enum)

```sh
rux run
```

```text
2026-01-15T12:00:00Z
  UTC      UTC  daylight false  2026-01-15T12:00:00Z
  Kyiv     EET  daylight false  2026-01-15T14:00:00+02:00
  New York EST  daylight false  2026-01-15T07:00:00-05:00
2026-07-01T12:00:00Z
  UTC      UTC  daylight false  2026-07-01T12:00:00Z
  Kyiv     EEST daylight true   2026-07-01T15:00:00+03:00
  New York EDT  daylight true   2026-07-01T08:00:00-04:00
Kyiv local times:
  2026-07-01T15:00:00 happens once:  2026-07-01T15:00:00+03:00
  2026-03-29T03:30:00 never happens: taken as 2026-03-29T04:30:00+03:00
  2026-10-25T03:30:00 happens twice: 2026-10-25T03:30:00+03:00 then 2026-10-25T03:30:00+02:00
rule X5 refused: not a POSIX TZ rule
```

Read the lesson: https://rux-lang.dev/docs/learn/time-zone
