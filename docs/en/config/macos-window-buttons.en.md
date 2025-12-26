# macos-window-buttons

**Language:** English | [日本語](../../ja/config/macos-window-buttons.ja.md)

## Description

Whether the window buttons in the macOS titlebar are visible. The window buttons are the colored buttons in the upper left corner of most macOS apps, also known as the traffic lights, that allow you to close, miniaturize, and zoom the window.

This setting has no effect when `window-decoration = false` or `macos-titlebar-style = hidden`, as the window buttons are always hidden in these modes.

Valid values are:

- `visible` - Show the window buttons.
- `hidden` - Hide the window buttons.

The default value is `visible`.

Changing this option at runtime only applies to new windows.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-window-buttons
# macOS window button visibility (default: visible)
macos-window-buttons = visible
```

## Platform

macOS only

## Related

- [`window-decoration`](window-decoration.en.md)
- [`macos-titlebar-style`](macos-titlebar-style.en.md)
