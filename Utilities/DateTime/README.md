# DateTime

Pair a `DateTime` with a `UtcOffset` to name one moment, and read and write it as RFC 3339 text
with `ParseRfc3339`.

**You'll need:** [Date](https://rux-lang.dev/docs/learn/date), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Coalesce](https://rux-lang.dev/docs/learn/coalesce)

```sh
rux run
```

```text
local       2026-10-04T09:30:00
in Kyiv     2026-10-04T09:30:00+03:00
in New York 2026-10-04T09:30:00-04:00
apart by    25200 s
parsed      2026-10-04T06:30:00Z
same moment as the Kyiv meeting: true
in Tokyo    2026-10-04T15:30:00+09:00
no offset   rejected at byte 19
```

Read the lesson: https://rux-lang.dev/docs/learn/date-time
