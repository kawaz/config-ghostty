---
description: Material finish for macOS app icon frame
platform: macos
default: aluminum
---

# macos-icon-frame

**Language:** English | [日本語](../../ja/config/macos-icon-frame.ja.md)

## Description

The material to use for the frame of the macOS app icon.

Valid values:

- `aluminum` - A brushed aluminum frame. This is the default.
- `beige` - A classic 90's computer beige frame.
- `plastic` - A glossy, dark plastic frame.
- `chrome` - A shiny chrome frame.

Note: This configuration is required when `macos-icon` is set to `custom-style`.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-icon-frame
# Material finish for macOS app icon frame (default: aluminum)
macos-icon-frame = aluminum
```
