# Tcp

Run a TCP server and client in one program: a `TcpListener` bound to an ephemeral port on the
loopback address accepts a `TcpStream`, a client thread connects and sends lines, the server
answers each, and `Shutdown` tells the server the client has finished.

**You'll need:** [IpAddress](https://rux-lang.dev/docs/learn/ip-address), [Thread](https://rux-lang.dev/docs/learn/thread), [Input](https://rux-lang.dev/docs/learn/input), [Catch](https://rux-lang.dev/docs/learn/catch)

```sh
rux run
```

```text
server: listening on 127.0.0.1, port chosen? true
server: a client connected from loopback? true
server: received [hello], replying [HELLO]
server: received [how are you?], replying [HOW ARE YOU?]
server: received [bye], replying [BYE]
server: the client has finished
client: read 3 replies
```

Read the lesson: https://rux-lang.dev/docs/learn/tcp
