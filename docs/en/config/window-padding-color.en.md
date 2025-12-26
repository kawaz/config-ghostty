---
description: Color of the window padding area
platform: all
default: background
---

# window-padding-color

**Language:** English | [日本語](../../ja/config/window-padding-color.ja.md)

## Description

The color of the padding area of the window. Valid values are:

* `background` - The background color specified in [`background`](background.en.md).
* `extend` - Extend the background color of the nearest grid cell.
* `extend-always` - Same as "extend" but always extends without applying any of the heuristics that disable extending noted below.

The "extend" value will be disabled in certain scenarios. On primary screen applications (e.g. not something like Neovim), the color will not be extended vertically if any of the following are true:

* The nearest row has any cells that have the default background color. The thinking is that in this case, the default background color looks fine as a padding color.
* The nearest row is a prompt row (requires shell integration). The thinking here is that prompts often contain powerline glyphs that do not look good extended.
* The nearest row contains a perfect fit powerline character. These don't look good extended.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-padding-color
# Color of the window padding area (default: background)
window-padding-color = background
```

## Related

- [`window-padding-x`](window-padding-x.en.md)
- [`window-padding-y`](window-padding-y.en.md)
- [`window-padding-balance`](window-padding-balance.en.md)
