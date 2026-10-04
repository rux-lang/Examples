# Workspace

Keep a program and its library in one tree, listed as explicit members of a root `[Workspace]` manifest.

**You'll need:** [Dependency](https://rux-lang.dev/docs/learn/dependency), [For](https://rux-lang.dev/docs/learn/for)

The root directory is the workspace; `App/` and `Temperature/` are its members. A workspace has no program of its own, so run the member:

```sh
cd App
rux run
```

```text
-40.0 C = -40.0 F
0.0 C = 32.0 F
21.5 C = 70.7 F
100.0 C = 212.0 F
```

From the root, `rux check`, `rux build` and `rux lint` work on every member. `rux run` there stops, because the workspace "has nothing to run", and suggests `rux --manifest App/Rux.toml run`, which runs the program without changing directory.

Read the lesson: https://rux-lang.dev/docs/learn/workspace
