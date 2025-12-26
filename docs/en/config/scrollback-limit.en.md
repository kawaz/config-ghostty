---
description: Maximum size of scrollback buffer in bytes
platform: all
default: 10000000 (10 MB)
---

# scrollback-limit

**Language:** English | [日本語](../../ja/config/scrollback-limit.ja.md)

## Description

The size of the scrollback buffer in bytes. This also includes the active screen. No matter what this is set to, enough memory will always be allocated for the visible screen and anything leftover is the limit for the scrollback.

When this limit is reached, the oldest lines are removed from the scrollback.

Scrollback currently exists completely in memory. This means that the larger this value, the larger potential memory usage. Scrollback is allocated lazily up to this limit, so if you set this to a very large value, it will not immediately consume a lot of memory.

This size is per terminal surface, not for the entire application.

It is not currently possible to set an unlimited scrollback buffer. This is a future planned feature.

This can be changed at runtime but will only affect new terminal surfaces.

## Default

```conf
# https://ghostty.org/docs/config/reference#scrollback-limit
# Maximum size of scrollback buffer in bytes (default: 10000000)
scrollback-limit = 10000000
```

## Related

- [`scroll-to-bottom`](scroll-to-bottom.en.md)
