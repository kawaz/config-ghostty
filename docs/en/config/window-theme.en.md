---
description: Window theme appearance
platform: macos, linux
default: auto
---

# window-theme

**Language:** English | [日本語](../../ja/config/window-theme.ja.md)

## Description

The theme to use for the windows. Valid values:

- `auto` - Determine the theme based on the configured terminal background color. This has no effect if the "theme" configuration has separate light and dark themes. In that case, the behavior of "auto" is equivalent to "system".
- `system` - Use the system theme.
- `light` - Use the light theme regardless of system theme.
- `dark` - Use the dark theme regardless of system theme.
- `ghostty` - Use the background and foreground colors specified in the Ghostty configuration. This is only supported on Linux builds.

On macOS, if `macos-titlebar-style` is "tabs", the window theme will be automatically set based on the luminosity of the terminal background color. This only applies to terminal windows. This setting will still apply to non-terminal windows within Ghostty.

This is currently only supported on macOS and Linux.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-theme
# Window theme appearance (default: auto)
window-theme = auto
```
