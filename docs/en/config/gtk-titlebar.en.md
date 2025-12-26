---
description: Display full GTK titlebar instead of window manager titlebar
platform: linux
default: true
---

# gtk-titlebar

**Language:** English | [日本語](../../ja/config/gtk-titlebar.ja.md)

## Description

When enabled, the full GTK titlebar is displayed instead of your window manager's simple titlebar. The behavior of this option will vary with your window manager.

This option does nothing when [`window-decoration`](window-decoration.en.md) is false or when running under macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-titlebar
# Display full GTK titlebar (default: true)
gtk-titlebar = true
```

## Related

- [window-decoration](window-decoration.en.md)
- [gtk-titlebar-style](gtk-titlebar-style.en.md)
