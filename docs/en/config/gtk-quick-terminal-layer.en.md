---
description: Layer position of the quick terminal window
platform: linux
default: "top"
---

# gtk-quick-terminal-layer

**Language:** English | [日本語](../../ja/config/gtk-quick-terminal-layer.ja.md)

## Description

The layer of the quick terminal window. The higher the layer, the more windows the quick terminal may conceal.

Valid values are:

- `overlay` - The quick terminal appears in front of all windows.

- `top` (default) - The quick terminal appears in front of normal windows but behind fullscreen overlays like lock screens.

- `bottom` - The quick terminal appears behind normal windows but in front of wallpapers and other windows in the background layer.

- `background` - The quick terminal appears behind all windows.

GTK Wayland only.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-quick-terminal-layer
# Layer position of the quick terminal window (default: top)
gtk-quick-terminal-layer = top
```
