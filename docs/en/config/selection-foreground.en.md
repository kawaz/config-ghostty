---
description: Foreground color for text selection
platform: all
default: (inverted background/foreground)
---

# selection-foreground

**Language:** English | [日本語](../../ja/config/selection-foreground.ja.md)

## Description

The foreground color for text selection. If this is not set, then the selection color is just the inverted window background and foreground (note: not to be confused with the cell bg/fg).

Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color. Since version 1.2.0, this can also be set to `cell-foreground` to match the cell foreground color, or `cell-background` to match the cell background color.

## Default

```conf
# https://ghostty.org/docs/config/reference#selection-foreground
# Foreground color for text selection (default: inverted background/foreground)
selection-foreground =
```

## Related

- [selection-background](selection-background.en.md)
- [background](background.en.md)
- [foreground](foreground.en.md)
