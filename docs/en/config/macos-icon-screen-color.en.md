# macos-icon-screen-color

**Language:** English | [日本語](../../ja/config/macos-icon-screen-color.ja.md)

## Description

The color of the screen in the macOS app icon.

The screen is a linear gradient so you can specify multiple colors that make up the gradient. Up to 64 comma-separated colors may be specified as either hex (`#RRGGBB` or `RRGGBB`) or as named X11 colors. The first color is the bottom of the gradient and the last color is the top of the gradient.

Note: This configuration is required when `macos-icon` is set to `custom-style`.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-icon-screen-color
# macOS app icon screen gradient (default: unset)
macos-icon-screen-color =
```

## Platform

macOS only

## Related

- [`macos-icon`](macos-icon.en.md)
- [`macos-icon-frame`](macos-icon-frame.en.md)
