---
description: Position of the quick terminal window
platform: all
default: top
---

# quick-terminal-position

**Language:** English | [日本語](../../ja/config/quick-terminal-position.ja.md)

## Description

The position of the "quick" terminal window. To learn more about the quick terminal, see the documentation for the `toggle_quick_terminal` binding action.

Valid values are:

- `top` - Terminal appears at the top of the screen.
- `bottom` - Terminal appears at the bottom of the screen.
- `left` - Terminal appears at the left of the screen.
- `right` - Terminal appears at the right of the screen.
- `center` - Terminal appears at the center of the screen.

On macOS, changing this configuration requires restarting Ghostty completely.

Note: There is no default keybind for toggling the quick terminal. To enable this feature, bind the `toggle_quick_terminal` action to a key.

## Default

```conf
# https://ghostty.org/docs/config/reference#quick-terminal-position
# Position of the quick terminal window (default: top)
quick-terminal-position = top
```
