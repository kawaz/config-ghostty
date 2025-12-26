---
description: Reset the window to the default size
platform: macos
default:
---

# reset_window_size

**Language:** English | [日本語](../../ja/actions/reset_window_size.ja.md)

## Description

Reset the window to the default size. The "default size" is the size that a new window would be created with. This has no effect if the window is fullscreen.

Only implemented on macOS.

## Example

```conf
# https://ghostty.org/docs/config/reference#reset_window_size
# Reset the window to the default size
keybind = super+0=reset_window_size
```
