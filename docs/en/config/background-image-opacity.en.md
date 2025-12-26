---
description: Opacity of background image relative to background color
platform: all
default: 1
---

# background-image-opacity

**Language:** English | [日本語](../../ja/config/background-image-opacity.ja.md)

## Description

Background image opacity.

This is relative to the value of [`background-opacity`](background-opacity.en.md).

A value of `1.0` (the default) will result in the background image being placed on top of the general background color, and then the combined result will be adjusted to the opacity specified by [`background-opacity`](background-opacity.en.md).

A value less than `1.0` will result in the background image being mixed with the general background color before the combined result is adjusted to the configured [`background-opacity`](background-opacity.en.md).

A value greater than `1.0` will result in the background image having a higher opacity than the general background color. For instance, if the configured [`background-opacity`](background-opacity.en.md) is `0.5` and `background-image-opacity` is set to `1.5`, then the final opacity of the background image will be `0.5 * 1.5 = 0.75`.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#background-image-opacity
# Opacity of background image relative to background color (default: 1)
background-image-opacity = 1
```

## Related

- [`background-opacity`](background-opacity.en.md)
- [`background-image`](background-image.en.md)
- [`background-image-fit`](background-image-fit.en.md)
