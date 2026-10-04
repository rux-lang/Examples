# Password

Make a 16-character password from 57 easy-to-read characters, drawing every one from the
system's entropy with rejection sampling so that no character is favoured.

**You'll need:** Parts 1–20 — this project is a checkpoint for Utilities, and leans on [Entropy](https://rux-lang.dev/docs/learn/entropy), [Propagate](https://rux-lang.dev/docs/learn/propagate) and [Loop](https://rux-lang.dev/docs/learn/loop).

```sh
rux run
```

```text
alphabet  abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789 (57 characters)
password  3negVXPww5u2Nzh4
```

This is a sample: the password is different on every run.

Read the project: https://rux-lang.dev/docs/learn/password
