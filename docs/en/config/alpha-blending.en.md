---
description: Color space to use for alpha blending operations
platform: all
default: "native"
---

# alpha-blending

**Language:** English | [日本語](../../ja/config/alpha-blending.ja.md)

## Description

What color space to use when performing alpha blending.

This affects the appearance of text and of any images with transparency. Additionally, custom shaders will receive colors in the configured space.

On macOS the default is `native`, on all other platforms the default is `linear-corrected`.

Valid values:

- `native` - Perform alpha blending in the native color space for the OS. On macOS this corresponds to Display P3, and on Linux it's sRGB.

- `linear` - Perform alpha blending in linear space. This will eliminate the darkening artifacts around the edges of text that are very visible when certain color combinations are used (e.g. red / green), but makes dark text look much thinner than normal and light text much thicker. This is also sometimes known as "gamma correction".

- `linear-corrected` - Same as `linear`, but with a correction step applied for text that makes it look nearly or completely identical to `native`, but without any of the darkening artifacts.

Available since: 1.1.0

## Default

```conf
# https://ghostty.org/docs/config/reference#alpha-blending
# Color space to use for alpha blending operations (default: native)
alpha-blending = native
```
