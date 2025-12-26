---
description: Text to display in the window subtitle
platform: linux
default: false
---

# window-subtitle

**Language:** English | [日本語](../../ja/config/window-subtitle.ja.md)

## Description

The text that will be displayed in the subtitle of the window. Valid values:

- `false` - Disable the subtitle.
- `working-directory` - Set the subtitle to the working directory of the surface.

This feature is only supported on GTK.

Available since: 1.1.0

## Default

```conf
# https://ghostty.org/docs/config/reference#window-subtitle
# Text to display in the window subtitle (default: false)
window-subtitle = false
```

## Related

- [`title`](title.en.md)
- [`window-title-font-family`](window-title-font-family.en.md)
