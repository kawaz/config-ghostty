---
description: Show or hide the proxy icon in the macOS titlebar
platform: macos
default: visible
---

# macos-titlebar-proxy-icon

**Language:** English | [日本語](../../ja/config/macos-titlebar-proxy-icon.ja.md)

## Description

Whether the proxy icon in the macOS titlebar is visible. The proxy icon is the icon that represents the folder of the current working directory. You can see this very clearly in the macOS built-in Terminal.app titlebar.

The proxy icon is only visible with the native macOS titlebar style.

Valid values are:

- `visible` - Show the proxy icon.
- `hidden` - Hide the proxy icon.

The default value is `visible`.

This setting can be changed at runtime and will affect all currently open windows but only after their working directory changes again. Therefore, to make this work after changing the setting, you must usually `cd` to a different directory, open a different file in an editor, etc.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-titlebar-proxy-icon
# Show or hide the proxy icon in the macOS titlebar (default: visible)
macos-titlebar-proxy-icon = visible
```

## Related

- [`macos-titlebar-style`](macos-titlebar-style.en.md)
