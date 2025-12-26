---
description: Set the opacity level of the background
platform: all
default: 1
---

# background-opacity

**Language:** English | [日本語](../../ja/config/background-opacity.ja.md)

## Description

The opacity level (opposite of transparency) of the background. A value of 1 is fully opaque and a value of 0 is fully transparent. A value less than 0 or greater than 1 will be clamped to the nearest valid value.

On macOS, background opacity is disabled when the terminal enters native fullscreen. This is because the background becomes gray and it can cause widgets to show through which isn't generally desirable.

On macOS, changing this configuration requires restarting Ghostty completely.

## Default

```conf
# https://ghostty.org/docs/config/reference#background-opacity
# Set the opacity level of the background (default: 1)
background-opacity = 1
```

## Related

- [`background`](background.en.md)
- [`background-opacity-cells`](background-opacity-cells.en.md)
- [`background-blur`](background-blur.en.md)
