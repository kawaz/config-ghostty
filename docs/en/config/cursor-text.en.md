---
description: Color of the text under the cursor
platform: all
default: (empty)
---

# cursor-text

**Language:** English | [日本語](../../ja/config/cursor-text.ja.md)

## Description

The color of the text under the cursor. If this is not set, a default will be chosen.

Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color. Since version 1.2.0, this can also be set to `cell-foreground` to match the cell foreground color, or `cell-background` to match the cell background color.

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-text
# Color of the text under the cursor (default: )
cursor-text =
```

## Example

```conf
cursor-text = #ffffff
cursor-text = cell-foreground
cursor-text = cell-background
```

## Related

- [`cursor-color`](cursor-color.en.md)
- [`foreground`](foreground.en.md)
- [`background`](background.en.md)
