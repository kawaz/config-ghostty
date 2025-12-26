---
description: Starting window X position in pixels
platform: macos
default: ""
---

# window-position-x

**Language:** English | [日本語](../../ja/config/window-position-x.ja.md)

## Description

The starting window position. This position is in pixels and is relative to the top-left corner of the primary monitor. Both values must be set to take effect. If only one value is set, it is ignored.

Note that the window manager may put limits on the position or override the position. For example, a tiling window manager may force the window to be a certain position to fit within the grid. There is nothing Ghostty will do about this, but it will make an effort.

Also note that negative values are also up to the operating system and window manager. Some window managers may not allow windows to be placed off-screen.

Invalid positions are runtime-specific, but generally the positions are clamped to the nearest valid position.

On macOS, the window position is relative to the top-left corner of the visible screen area. This means that if the menu bar is visible, the window will be placed below the menu bar.

Note: this is only supported on macOS. The GTK runtime does not support setting the window position, as windows are only allowed position themselves in X11 and not Wayland.

## Related

- [window-position-y](window-position-y.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#window-position-x
# Starting window X position in pixels (default: unset)
window-position-x =
```
