# fullscreen

**Language:** English | [日本語](../../ja/config/fullscreen.ja.md)

## Description

Start new windows in fullscreen. This setting applies to new windows and does not apply to tabs, splits, etc. However, this setting will apply to all new windows, not just the first one.

On macOS, this setting does not work if window-decoration is set to "false", because native fullscreen on macOS requires window decorations to be set.

## Default

```conf
# https://ghostty.org/docs/config/reference#fullscreen
# Start windows in fullscreen (default: false)
fullscreen = false
```

## Related

- [`window-decoration`](window-decoration.en.md)
