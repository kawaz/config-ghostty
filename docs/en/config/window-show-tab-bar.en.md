---
description: Control visibility of the tab bar
platform: linux
default: auto
---

# window-show-tab-bar

**Language:** English | [日本語](../../ja/config/window-show-tab-bar.ja.md)

## Description

Whether to show the tab bar.

Valid values:

- `always`

  Always display the tab bar, even when there's only one tab.

  Available since: 1.2.0

- `auto` *(default)*

  Automatically show and hide the tab bar. The tab bar is only shown when there are two or more tabs present.

- `never`

  Never show the tab bar. Tabs are only accessible via the tab overview or by keybind actions.

Currently only supported on Linux (GTK).

## Default

```conf
# https://ghostty.org/docs/config/reference#window-show-tab-bar
# Control visibility of the tab bar (default: auto)
window-show-tab-bar = auto
```

## Related

- [`gtk-tabs-location`](gtk-tabs-location.en.md)
- [`window-new-tab-position`](window-new-tab-position.en.md)
