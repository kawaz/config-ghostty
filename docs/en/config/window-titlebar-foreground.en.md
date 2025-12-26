---
description: Foreground color for the window titlebar
platform: linux
default: (none)
---

# window-titlebar-foreground

**Language:** English | [日本語](../../ja/config/window-titlebar-foreground.ja.md)

## Description

Foreground color for the window titlebar. This only takes effect if [`window-theme`](window-theme.en.md) is set to ghostty. Currently only supported in the GTK app runtime.

Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-titlebar-foreground
# Foreground color for the window titlebar (default: none)
window-titlebar-foreground =
```

## Related

- [window-theme](window-theme.en.md)
- [window-titlebar-background](window-titlebar-background.en.md)
