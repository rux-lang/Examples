# Inventory

Keep a shop's stock as structs in a vector and apply a day of orders, refusing the ones that cannot be carried out.

**You'll need:** Parts 1–17 — this project is a checkpoint for Collections, and leans on [AbsenceToError](https://rux-lang.dev/docs/learn/absence-to-error), [ErrorSum](https://rux-lang.dev/docs/learn/error-sum), [TypedPattern](https://rux-lang.dev/docs/learn/typed-pattern) and [Vector](https://rux-lang.dev/docs/learn/vector).

```sh
rux run
```

```text
opening stock
    apples      12
    bread        3
    candles      0
    milk         6
sell 5 apples
    done
sell 4 bread
    refused: wanted 4 bread, only 3 left
sell 1 honey
    refused: no such item as honey
deliver 10 bread
    done
sell 4 bread
    done
deliver 2 honey
    done
sell -2 milk
    refused: -2 is not an amount
retire milk
    refused: 6 milk still on the shelf
retire candles
    done
sell 6 milk
    done
closing stock, after 4 refused orders
    apples       7
    bread        9
    milk         0
    honey        2
```

Read the project: https://rux-lang.dev/docs/learn/inventory
