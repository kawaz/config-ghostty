---
description: Starting window Y position in pixels
platform: macos
default: ""
---

# window-position-y

**Language:** English | [日本語](../../ja/config/window-position-y.ja.md)

## Description

The starting window position. This position is in pixels and is relative to the top-left corner of the primary monitor. Both values must be set to take effect. If only one value is set, it is ignored.

Note that the window manager may put limits on the position or override the position. For example, a tiling window manager may force the window to be a certain position to fit within the grid. There is nothing Ghostty will do about this, but it will make an effort.

Also note that negative values are also up to the operating system and window manager. Some window managers may not allow windows to be placed off-screen.

Invalid positions are runtime-specific, but generally the positions are clamped to the nearest valid position.

On macOS, the window position is relative to the top-left corner of the visible screen area. This means that if the menu bar is visible, the window will be placed below the menu bar.

Note: this is only supported on macOS. The GTK runtime does not support setting the window position, as windows are only allowed position themselves in X11 and not Wayland.

## Related

- [window-position-x](window-position-x.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#window-position-y
# Starting window Y position in pixels (default: unset)
window-position-y =
```
