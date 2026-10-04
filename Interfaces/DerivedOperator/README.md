# DerivedOperator

Declare `==` and `<`, and get `!=`, `>`, `<=` and `>=` derived from them.

**You'll need:** [OperatorOverload](https://rux-lang.dev/docs/learn/operator-overload)

```sh
rux run
```

```text
Ann == Cy  true
Ann <  Bob true
Ann != Bob true
Bob >  Ann true
Ann <= Cy  true
Ann >= Bob false
```

Read the lesson: https://rux-lang.dev/docs/learn/derived-operator
