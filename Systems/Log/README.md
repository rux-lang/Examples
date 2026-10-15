# Log

Write structured log records with a `Logger`: a level, a message and typed `Field`s, as text or as
JSON lines, with levels that filter, context fields on every record, and the process-wide log on
standard error.

**You'll need:** [InterfaceValue](https://rux-lang.dev/docs/learn/interface-value), [Slice](https://rux-lang.dev/docs/learn/slice), [Enum](https://rux-lang.dev/docs/learn/enum), [Json](https://rux-lang.dev/docs/learn/json)

```sh
rux run
```

```text
INFO  server started port=8080 tls=false
WARN  slow request path=/search seconds=2.5
ERROR cannot open file name="my notes.txt"
debug enabled? false
DEBUG cache lookup key=user:7
INFO  handled request=r-42 status=200
{"level":"info","message":"server started","port":8080,"tls":false}
{"level":"warn","message":"slow request","path":"/search","seconds":2.5}
write failures: none
global info enabled? false
```

The program also writes one record to standard error, through the process-wide log, which the
block above leaves out:

```text
WARN  disk almost full free-mb=120
```

Read the lesson: https://rux-lang.dev/docs/learn/log
