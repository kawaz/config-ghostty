---
description: Background color for the window titlebar
platform: linux
default: (none)
---

# window-titlebar-background

**Language:** English | [日本語](../../ja/config/window-titlebar-background.ja.md)

## Description

Background color for the window titlebar. This only takes effect if [`window-theme`](window-theme.en.md) is set to ghostty. Currently only supported in the GTK app runtime.

Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-titlebar-background
# Background color for the window titlebar (default: none)
window-titlebar-background =
```

## Related

- [window-theme](window-theme.en.md)
- [window-titlebar-foreground](window-titlebar-foreground.en.md)
