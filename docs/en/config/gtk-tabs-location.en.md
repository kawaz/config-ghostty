---
description: Position of the GTK tab bar (top, bottom, or hidden)
platform: linux
default: top
---

# gtk-tabs-location

**Language:** English | [日本語](../../ja/config/gtk-tabs-location.ja.md)

## Description

Determines the side of the screen that the GTK tab bar will stick to. Top, bottom, and hidden are supported. The default is top.

When `hidden` is set, a tab button displaying the number of tabs will appear in the title bar. It has the ability to open a tab overview for displaying tabs. Alternatively, you can use the [`toggle_tab_overview`](../actions/toggle_tab_overview.en.md) action in a keybind if your window doesn't have a title bar, or you can switch tabs with keybinds.

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-tabs-location
# Position of the GTK tab bar (top, bottom, or hidden) (default: top)
gtk-tabs-location = top
```

## Related

- [`gtk-titlebar-style`](gtk-titlebar-style.en.md)
- [`window-show-tab-bar`](window-show-tab-bar.en.md)
- [`gtk-wide-tabs`](gtk-wide-tabs.en.md)
