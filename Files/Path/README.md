# Path

Walk a path's components and named parts, and see why a path is not a string.

**You'll need:** [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [Iterator](https://rux-lang.dev/docs/learn/iterator), [Allocator](https://rux-lang.dev/docs/learn/allocator)

```sh
rux run
```

```text
path       Bin//reports/summary.txt
components [Bin] [reports] [summary.txt]
file name  summary.txt
stem       summary
extension  txt
parent     Bin//reports
as text    Bin//reports/summary.txt
```

Read the lesson: https://rux-lang.dev/docs/learn/path
