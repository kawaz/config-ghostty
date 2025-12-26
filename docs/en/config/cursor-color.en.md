# cursor-color

**Language:** English | [日本語](../../ja/config/cursor-color.ja.md)

## Description

The color of the cursor. If this is not set, a default will be chosen.

Direct colors can be specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color.

Additionally, special values can be used to set the color to match other colors at runtime:

- `cell-foreground` - Match the cell foreground color. (Available since: 1.2.0)
- `cell-background` - Match the cell background color. (Available since: 1.2.0)

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-color
# Cursor color (default: auto-selected)
cursor-color =
```

## Related

- [`cursor-style`](cursor-style.en.md)
- [`cursor-opacity`](cursor-opacity.en.md)
