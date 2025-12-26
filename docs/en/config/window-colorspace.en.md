---
description: Color space for interpreting terminal colors
platform: macos
default: srgb
---

# window-colorspace

**Language:** English | [日本語](../../ja/config/window-colorspace.ja.md)

## Description

The color space to use when interpreting terminal colors. "Terminal colors" refers to colors specified in your configuration and colors produced by direct-color SGR sequences.

Valid values:

- `srgb` - Interpret colors in the sRGB color space. This is the default.
- `display-p3` - Interpret colors in the Display P3 color space.

This setting is currently only supported on macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-colorspace
# Color space for interpreting terminal colors (default: srgb)
window-colorspace = srgb
```
