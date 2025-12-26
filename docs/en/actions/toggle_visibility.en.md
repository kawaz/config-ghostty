---
description: Show or hide all windows
platform: macos
default: N/A
---

# toggle_visibility

**Language:** English | [日本語](../../ja/actions/toggle_visibility.ja.md)

## Description

Show or hide all windows. If all windows become shown, we also ensure Ghostty becomes focused. When hiding all windows, focus is yielded to the next application as determined by the OS.

Note: When the focused surface is fullscreen, this method does nothing.

Only implemented on macOS.

## Usage

```conf
keybind = cmd+shift+h=toggle_visibility
```
