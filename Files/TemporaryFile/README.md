# TemporaryFile

Create a scratch file with an unguessable name that is deleted when you are done with it.

**You'll need:** [Metadata](https://rux-lang.dev/docs/learn/metadata), [Destructor](https://rux-lang.dev/docs/learn/destructor), [Move](https://rux-lang.dev/docs/learn/move)

```sh
rux run
```

The file name is random, so the hex digits differ on every run. A sample:

```text
created            draft-08bf264c6b30a0cc
exists while held  true
exists after Close false
exists after drop  false
```

Read the lesson: https://rux-lang.dev/docs/learn/temporary-file
