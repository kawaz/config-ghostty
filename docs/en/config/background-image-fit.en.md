---
description: Scale background image to fit terminal
platform: all
default: contain
---

# background-image-fit

**Language:** English | [日本語](../../ja/config/background-image-fit.ja.md)

## Description

Valid values are:

- `contain`

  Preserving the aspect ratio, scale the background image to the largest size that can still be contained within the terminal, so that the whole image is visible.

- `cover`

  Preserving the aspect ratio, scale the background image to the smallest size that can completely cover the terminal. This may result in one or more edges of the image being clipped by the edge of the terminal.

- `stretch`

  Stretch the background image to the full size of the terminal, without preserving the aspect ratio.

- `none`

  Don't scale the background image.

## Default

```conf
# https://ghostty.org/docs/config/reference#background-image-fit
# Scale background image to fit terminal (default: contain)
background-image-fit = contain
```

## Related

- [`background-image`](background-image.en.md)
- [`background-image-opacity`](background-image-opacity.en.md)
- [`background-image-position`](background-image-position.en.md)
- [`background-image-repeat`](background-image-repeat.en.md)
