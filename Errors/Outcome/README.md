# Outcome

Keep an outcome that must outlive its call as the fallible itself, `let party = Share(12, 4);`, then pass it, test it with `is` and match it by side.

**You'll need:** [Fail](https://rux-lang.dev/docs/learn/fail), [MatchExpression](https://rux-lang.dev/docs/learn/match-expression)

`Share` declares `-> int ! NobodyToShare`, and its call already is the outcome: `Main` stores it in a local of type `int ! NobodyToShare` and hands it to `Describe` later. A success converts to a fallible on its own, as in `let promised: int ! NobodyToShare = 2;`, while an error gets in only through `throw`. The sides are matched by type — `each: int` and `error: NobodyToShare` — and `empty is NobodyToShare` asks which side a value holds. When both sides share a type, as in `ExactShare`'s `int ! int`, a type cannot pick a side, so the arms name them with `.Success(...)` and `.Failure(...)`. A match must cover both sides.

```sh
rux run
```

```text
3 slices each
12 slices and nobody to eat them
not even one slice each
2 slices each
8 slices and nobody to eat them
eaten at the party: 12
the empty party failed: true
2 slices left over
```

Read the lesson: https://rux-lang.dev/docs/learn/outcome
