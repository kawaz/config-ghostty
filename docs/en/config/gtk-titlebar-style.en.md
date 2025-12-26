---
description: Style of the GTK titlebar (native or tabs)
platform: linux
default: native
---

# gtk-titlebar-style

**Language:** English | [日本語](../../ja/config/gtk-titlebar-style.ja.md)

## Description

The style of the GTK titlebar. Available values are `native` and `tabs`.

The `native` titlebar style is a traditional titlebar with a title, a few buttons and window controls. A separate tab bar will show up below the titlebar if you have multiple tabs open in the window.

The `tabs` titlebar merges the tab bar and the traditional titlebar. This frees up vertical space on your screen if you use multiple tabs. One limitation of the `tabs` titlebar is that you cannot drag the titlebar by the titles any longer (as they are tab titles now). Other areas of the `tabs` title bar can be used to drag the window around.

The default style is `native`.

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-titlebar-style
# Style of the GTK titlebar (native or tabs) (default: native)
gtk-titlebar-style = native
```

## Related

- [`gtk-titlebar-hide-when-maximized`](gtk-titlebar-hide-when-maximized.en.md)
- [`gtk-wide-tabs`](gtk-wide-tabs.en.md)
- [`gtk-tabs-location`](gtk-tabs-location.en.md)
