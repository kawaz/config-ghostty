---
description: When to show resize overlays during terminal resizing
platform: all
default: after-first
---

# resize-overlay

**Language:** English | [日本語](../../ja/config/resize-overlay.ja.md)

## Description

This controls when resize overlays are shown. Resize overlays are a transient popup that shows the size of the terminal while the surfaces are being resized. The possible options are:

* `always` - Always show resize overlays.
* `never` - Never show resize overlays.
* `after-first` - The resize overlay will not appear when the surface is first created, but will show up if the surface is subsequently resized.

The default is `after-first`.

## Default

```conf
# https://ghostty.org/docs/config/reference#resize-overlay
# When to show resize overlays (default: after-first)
resize-overlay = after-first
```

## Related

- [resize-overlay-position](resize-overlay-position.en.md)
- [resize-overlay-duration](resize-overlay-duration.en.md)
