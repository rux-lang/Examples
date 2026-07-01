# Rux Examples

Example projects and programming tutorials for the [Rux](https://rux-lang.dev) language.

## List of Projects

| Package                 | Description                                                                       |
| ----------------------- | --------------------------------------------------------------------------------- |
| [Hello](Hello/)         | Print "Hello, World!" — the minimal Rux application                               |
| [Greeting](Greeting/)   | Iterate over a string array and print greetings in multiple languages             |
| [Primitive](Primitive/) | Declare and print all primitive types: integers, floats, booleans, and characters |
| [Factorial](Factorial/) | Calculate and print factorial values with a loop                                  |
| [Array](Array/)         | Use a dynamic array with manual memory management (`Alloc`, `Zero`, `Free`)       |
| [File](File/)           | Write text to a file with WinAPI                                                  |

## Running an Example

Each example is a standalone Rux package with its own `Rux.toml`.

```sh
cd Hello
rux run
```

If necessary, install the dependencies first:

```sh
cd Hello
rux install
rux run
```

## License

[MIT](LICENSE)
