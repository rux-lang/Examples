# IpAddress

Read IPv4 and IPv6 addresses with `IpAddress::Parse`, write their canonical form with
`WriteText`, tell loopback, private and public addresses apart, and read socket addresses — an
address and a port — with `SocketAddress::Parse`. Text that is not an address is `none`.

**You'll need:** [Optional](https://rux-lang.dev/docs/learn/optional), [Presence](https://rux-lang.dev/docs/learn/presence), [Struct](https://rux-lang.dev/docs/learn/struct), [Bitwise](https://rux-lang.dev/docs/learn/bitwise)

```sh
rux run
```

```text
127.0.0.1                  IPv4 127.0.0.1        loopback, this machine
192.168.1.20               IPv4 192.168.1.20     private network
172.20.0.5                 IPv4 172.20.0.5       private network
8.8.8.8                    IPv4 8.8.8.8          public
0.0.0.0                    IPv4 0.0.0.0          unspecified, any address
::1                        IPv6 ::1              loopback, this machine
2001:DB8:0:0:0:0:0:1       IPv6 2001:db8::1      public
fd12:3456::7               IPv6 fd12:3456::7     private network
fe80::1                    IPv6 fe80::1          link-local
256.1.1.1                  not an IP address
192.168.01.20              not an IP address
127.1                      not an IP address
example.com                not an IP address
127.0.0.1:8080             port 8080  127.0.0.1:8080
[::1]:443                  port 443   [::1]:443
::1:443                    not a socket address
127.0.0.1:70000            not a socket address
localhost:80               not a socket address
built from parts           127.0.0.1:3000
same as 127.0.0.1:3000?    true
127.0.0.1 equals ::1?      false
```

Read the lesson: https://rux-lang.dev/docs/learn/ip-address
