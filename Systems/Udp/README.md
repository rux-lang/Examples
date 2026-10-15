# Udp

Send datagrams between two `UdpSocket`s on the loopback address: `SendTo` and `ReceiveFrom` with
an address on every datagram, a reply to the sender, message boundaries that survive, a connected
pair that uses `Send` and `Receive`, and a read timeout for an answer that never comes.

**You'll need:** [IpAddress](https://rux-lang.dev/docs/learn/ip-address), [Tcp](https://rux-lang.dev/docs/learn/tcp), [Duration](https://rux-lang.dev/docs/learn/duration), [Guard](https://rux-lang.dev/docs/learn/guard)

```sh
rux run
```

```text
bob got [ping] from alice? true
alice got [pong]
bob got [first], 5 bytes
bob got [second], 6 bytes
bob got [over the connected pair]
bob waited 100 ms: nothing
```

Read the lesson: https://rux-lang.dev/docs/learn/udp
