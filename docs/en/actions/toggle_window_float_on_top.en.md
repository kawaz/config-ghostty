---
description: Toggle window to always float on top of others
platform: macos
default:
---

# toggle_window_float_on_top

**Language:** English | [日本語](../../ja/actions/toggle_window_float_on_top.ja.md)

## Description

Toggle whether the terminal window should always float on top of other windows even when unfocused.

Terminal windows always start as normal (not float-on-top) windows.

Only implemented on macOS.

## Example

```conf
# https://ghostty.org/docs/config/reference#toggle_window_float_on_top
# Toggle window to always float on top of others
keybind = super+f=toggle_window_float_on_top
```
