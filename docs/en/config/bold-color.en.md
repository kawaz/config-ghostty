---
description: Color used for bold text in the terminal
platform: all
default: (none)
---

# bold-color

**Language:** English | [日本語](../../ja/config/bold-color.ja.md)

## Description

Modifies the color used for bold text in the terminal.

This can be set to a specific color, using the same format as [`background`](background.en.md) or [`foreground`](foreground.en.md) (e.g. `#RRGGBB` but other formats are also supported). If a specific color is set, this color will always be used for the default bold text color. It will set the rest of the bold colors to `bright`.

This can also be set to `bright`, which uses the bright color palette for bold text. For example, if the text is red, then the bold will use the bright red color. The terminal palette is set with [`palette`](palette.en.md) but can also be overridden by the terminal application itself using escape sequences such as OSC 4.

Available since Ghostty 1.2.0.

## Default

```conf
# https://ghostty.org/docs/config/reference#bold-color
# Color used for bold text (default: inherit)
bold-color =
```

## Related

- [foreground](foreground.en.md)
- [background](background.en.md)
- [palette](palette.en.md)
