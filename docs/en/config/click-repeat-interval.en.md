---
description: Time in milliseconds between clicks for repeat detection
platform: all
default: 0 (platform dependent)
---

# click-repeat-interval

**Language:** English | [日本語](../../ja/config/click-repeat-interval.ja.md)

## Description

The time in milliseconds between clicks to consider a click a repeat (double, triple, etc.) or an entirely new single click. A value of zero will use a platform-specific default. The default on macOS is determined by the OS settings. On every other platform it is 500ms.

## Default

```conf
# https://ghostty.org/docs/config/reference#click-repeat-interval
# Time in milliseconds between clicks for repeat detection (default: 0)
click-repeat-interval = 0
```

## Related

- [`mouse-scroll-multiplier`](mouse-scroll-multiplier.en.md)
- [`mouse-shift-capture`](mouse-shift-capture.en.md)
