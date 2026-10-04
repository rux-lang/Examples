# Date

Read calendar dates with `ParseDate`, which returns `Date ! TimeParseError` and says what was wrong
and where, and see how leap years shape the calendar.

**You'll need:** [Stopwatch](https://rux-lang.dev/docs/learn/stopwatch), [Outcome](https://rux-lang.dev/docs/learn/outcome), [Catch](https://rux-lang.dev/docs/learn/catch), [VariantMatch](https://rux-lang.dev/docs/learn/variant-match)

```sh
rux run
```

```text
2024-02-29  ok, day 60 of the year
2023-02-29  no such day in that month, at byte 8
2024-13-01  no such month, at byte 5
2024/02/01  not shaped like YYYY-MM-DD, at byte 4
2024-2-1  not shaped like YYYY-MM-DD, at byte 6

2023  leap: false, February has 28 days
2024  leap: true, February has 29 days
1900  leap: false, February has 28 days
2000  leap: true, February has 29 days

the day after 2023-02-28 is 2023-03-01
the day after 2024-02-28 is 2024-02-29
```

Read the lesson: https://rux-lang.dev/docs/learn/date
