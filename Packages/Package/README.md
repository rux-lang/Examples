# Package

Read a `Rux.toml` manifest section by section, and see which of the four package types it declares.

**You'll need:** [Module](https://rux-lang.dev/docs/learn/module), [Enum](https://rux-lang.dev/docs/learn/enum), [MatchExpression](https://rux-lang.dev/docs/learn/match-expression)

```sh
rux run
```

```text
Type     Executable
MinRux   0.4.0 met: true
Profile  Debug
```

This package's own `Rux.toml`, line by line:

| Line                                          | Meaning                                                                    |
| --------------------------------------------- | -------------------------------------------------------------------------- |
| `[Manifest]`                                  | Facts about the file itself                                                |
| `Version = 1`                                 | The manifest schema; 1 is the only one, and it is never inferred           |
| `MinRux = "0.4.0"`                            | The oldest compiler that may build the package                             |
| `[Package]`                                   | Facts about the package                                                    |
| `Name = "Package"`                            | Its name, the first segment of its import paths and of its artifact's name |
| `Version = "0.1.0"`                           | The package's own semantic version                                         |
| `Type = "Executable"`                         | What it builds: one of the four package types in `Src/Main.rux`          |
| `Authors = [...]`                             | Who wrote it                                                               |
| `Description = "..."`                         | One line about it                                                          |
| `[Dependencies]`                              | The packages it imports, one per import name                               |
| `Core = { Namespace = "Rux", Version = "*" }` | `Core` from the registry, any version installed                            |

`rux new Name` writes a manifest like this one; `--source`, `--static` and `--shared` select the other three types.

Read the lesson: https://rux-lang.dev/docs/learn/package
