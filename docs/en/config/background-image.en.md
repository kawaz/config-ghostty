# background-image

**Language:** English | [日本語](../../ja/config/background-image.ja.md)

## Description

Background image for the terminal.

This should be a path to a PNG or JPEG file, other image formats are not yet supported.

The background image is currently per-terminal, not per-window. If you are a heavy split user, the background image will be repeated across splits. A future improvement to Ghostty will address this.

WARNING: Background images are currently duplicated in VRAM per-terminal. For sufficiently large images, this could lead to a large increase in memory usage (specifically VRAM usage). A future Ghostty improvement will resolve this by sharing image textures across terminals.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#background-image
# Background image path (default: unset)
background-image =
```

## Related

- [`background-image-fit`](background-image-fit.en.md)
- [`background-image-repeat`](background-image-repeat.en.md)
- [`background-image-position`](background-image-position.en.md)
