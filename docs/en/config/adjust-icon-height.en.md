---
description: Adjust nerd font icon height
platform: all
default:
---

# adjust-icon-height

**Language:** English | [日本語](../../ja/config/adjust-icon-height.ja.md)

## Description

Height in pixels or percentage adjustment of maximum height for nerd font icons.

A positive (negative) value will increase (decrease) the maximum icon height. This may not affect all icons equally: the effect depends on whether the default size of the icon is height-constrained, which in turn depends on the aspect ratio of both the icon and your primary font.

Certain icons designed for box drawing and terminal graphics, such as Powerline symbols, are not affected by this option.

See the notes about adjustments in [`adjust-cell-width`](adjust-cell-width.en.md).

## Default

```conf
# https://ghostty.org/docs/config/reference#adjust-icon-height
# Adjust nerd font icon height (default: )
adjust-icon-height =
```

## Related

- [`adjust-cell-width`](adjust-cell-width.en.md)
- [`adjust-cell-height`](adjust-cell-height.en.md)
