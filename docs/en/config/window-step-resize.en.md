---
description: Resize window in discrete increments of cell size
platform: macos
default: false
---

# window-step-resize

**Language:** English | [日本語](../../ja/config/window-step-resize.ja.md)

## Description

Resize the window in discrete increments of the focused surface's cell size. If this is disabled, surfaces are resized in pixel increments. Currently only supported on macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-step-resize
# Resize window in discrete increments of cell size (default: false)
window-step-resize = false
```

## Related

- [`window-padding-y`](window-padding-y.en.md)
- [`window-padding-x`](window-padding-x.en.md)
- [`resize_split`](../actions/resize_split.en.md)
