---
description: Close the current window, tab, or split
platform: all
---

# close_surface

**Language:** English | [日本語](../../ja/actions/close_surface.ja.md)

## Description

Close the current "surface", whether that is a window, tab, split, etc.

This might trigger a close confirmation popup, depending on the value of the [`confirm-close-surface`](../config/confirm-close-surface.en.md) configuration setting.

## Example

```conf
keybind = super+w:close_surface
```

## Related

- [`close_window`](close_window.en.md)
- [`close_tab`](close_tab.en.md)
- [`confirm-close-surface`](../config/confirm-close-surface.en.md)
