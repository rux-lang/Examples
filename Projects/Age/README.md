# Age

Work out an age in completed years, months and days, where a month that is missing its day ends
on its last day.

**You'll need:** Parts 1–20 — this project is a checkpoint for Utilities, and leans on [Date](https://rux-lang.dev/docs/learn/date), [Fail](https://rux-lang.dev/docs/learn/fail) and [AbsenceToError](https://rux-lang.dev/docs/learn/absence-to-error).

```sh
rux run
```

```text
born        on          years  months  days
1990-03-15  2026-10-04     36       6    19
1990-12-25  2026-10-04     35       9     9
2000-10-04  2026-10-04     26       0     0
2026-01-31  2026-02-28      0       1     0
2026-01-31  2026-03-30      0       1    30
2026-01-31  2026-03-31      0       2     0
2004-02-29  2025-02-28     21       0     0
2004-02-29  2028-02-28     23      11    30
2004-02-29  2028-02-29     24       0     0
2026-10-04  1990-03-15  refused, born after that date
2023-02-29  2026-10-04  2023-02-29 is not a date
```

Read the project: https://rux-lang.dev/docs/learn/age
