---
description: Vertical padding between terminal cells and window borders
platform: all
default: 2
---

# window-padding-y

**Language:** English | [日本語](../../ja/config/window-padding-y.ja.md)

## Description

Vertical window padding. This applies padding between the terminal cells and the top and bottom window borders. The value is in points, meaning that it will be scaled appropriately for screen DPI.

If this value is set too large, the screen will render nothing, because the grid will be completely squished by the padding. It is up to you as the user to pick a reasonable value. If you pick an unreasonable value, a warning will appear in the logs.

Changing this configuration at runtime will only affect new terminals, i.e. new windows, tabs, etc.

To set a different top and bottom padding, specify two numerical values separated by a comma. For example, `window-padding-y = 2,4` will set the top padding to 2 and the bottom padding to 4. If you want to set both paddings to the same value, you can use a single value. For example, `window-padding-y = 2` will set both paddings to 2.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-padding-y
# Vertical padding between terminal cells and window borders (default: 2)
window-padding-y = 2
```

## Example

```conf
window-padding-y = 4
window-padding-y = 2,4
```

## Related

- [`window-padding-x`](window-padding-x.en.md)
- [`window-padding-balance`](window-padding-balance.en.md)
- [`window-padding-color`](window-padding-color.en.md)
