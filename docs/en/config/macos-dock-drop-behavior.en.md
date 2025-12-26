---
description: Behavior when dropping files on the Ghostty dock icon
platform: macos
default: new-tab
---

# macos-dock-drop-behavior

**Language:** English | [日本語](../../ja/config/macos-dock-drop-behavior.ja.md)

## Description

Controls the windowing behavior when dropping a file or folder onto the Ghostty icon in the macOS dock.

Valid values are:

- `new-tab` - Create a new tab in the current window, or open a new window if none exist.
- `window` - Create a new window unconditionally.

The default value is `new-tab`.

This setting is only supported on macOS and has no effect on other platforms.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-dock-drop-behavior
# Behavior when dropping files on the Ghostty dock icon (default: new-tab)
macos-dock-drop-behavior = new-tab
```

## Related

- [`new_window`](../actions/new_window.en.md)
- [`new_tab`](../actions/new_tab.en.md)
