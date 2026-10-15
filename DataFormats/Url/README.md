# Url

Read a URL with `Url::Parse`, which normalizes it, take it apart into its components, resolve
relative links against it with `Resolve`, walk and decode its query with `Pairs` and `Decode`, and
build a query safely with `QueryBuilder`.

**You'll need:** [BaseEncoding](https://rux-lang.dev/docs/learn/base-encoding), [Allocator](https://rux-lang.dev/docs/learn/allocator), [Coalesce](https://rux-lang.dev/docs/learn/coalesce), [Propagate](https://rux-lang.dev/docs/learn/propagate), [FallibleMain](https://rux-lang.dev/docs/learn/fallible-main)

```sh
rux run
```

```text
url       https://rux-lang.dev/docs/learn/url?q=caf%C3%A9&page=2#install
scheme    https
host      rux-lang.dev
port      443 (not written, the default for https)
path      /docs/learn/url
query     q=caf%C3%A9&page=2
fragment  install
  q = café
  page = 2
links on the page:
  guide                  -> https://rux-lang.dev/docs/learn/guide
  ../packaging/manifest  -> https://rux-lang.dev/docs/packaging/manifest
  /blog                  -> https://rux-lang.dev/blog
  ?page=3                -> https://rux-lang.dev/docs/learn/url?page=3
  #run-it                -> https://rux-lang.dev/docs/learn/url?q=caf%C3%A9&page=2#run-it
  //github.com/rux-lang  -> https://github.com/rux-lang
search    https://example.com/search?q=fish+%26+chips&sort=price%3Dasc
segment   Kyiv%202026%2F10.txt
refused:
  rux-lang.dev/docs            -> no scheme: a relative reference
  https://rux lang.dev/        -> not a host
  https://rux-lang.dev:99999/  -> not a port
  https://rux-lang.dev/caf%c   -> a % without two hexadecimal digits
```

Read the lesson: https://rux-lang.dev/docs/learn/url
