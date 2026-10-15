# BaseEncoding

Write bytes as text in hexadecimal, Base64 and its URL-safe and unpadded variants, Base32 and
Base58, into buffers you provide, and decode them back strictly, with a `DecodeError` that says
what is wrong and where.

**You'll need:** [WritableSlice](https://rux-lang.dev/docs/learn/writable-slice), [Outcome](https://rux-lang.dev/docs/learn/outcome), [CatchFallback](https://rux-lang.dev/docs/learn/catch-fallback), [Encoding](https://rux-lang.dev/docs/learn/encoding)

```sh
rux run
```

```text
hex                fbefff0010
base64             ++//ABA=
base64, no pad     ++//ABA
base64 url         --__ABA=
base64 url, no pad --__ABA
base32             7PX76AAQ
base32 crockford   ZFQZY00G
base58             VRbE2yM  (at most 7)
27 bytes in Base64 take 36 characters
a 4-character buffer is refused
TWFueSBoYW5kcyBtYWtlIGxpZ2h0IHdvcmsu
hex fbefff0010   -> 5 bytes: fbefff0010
hex FBEFFF0010   -> 5 bytes: fbefff0010
hex fbefff001    -> invalid length at 9
hex 0xfbefff     -> invalid character at 1
b64 SGVsbG8=     -> 5 bytes: 48656c6c6f
b64 SGVsbG9=     -> non-canonical trailing bits at 6
b64 SGVsbG8      -> invalid length at 7
b64 SGVsbG8=     -> destination too short, need 5 bytes
```

Read the lesson: https://rux-lang.dev/docs/learn/base-encoding
