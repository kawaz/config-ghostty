---
description: Balance extra padding between all four window edges
platform: all
default: false
---

# window-padding-balance

**Language:** English | [日本語](../../ja/config/window-padding-balance.ja.md)

## Description

The viewport dimensions are usually not perfectly divisible by the cell size. In this case, some extra padding on the end of a column and the bottom of the final row may exist. If this is `true`, then this extra padding is automatically balanced between all four edges to minimize imbalance on one side. If this is `false`, the top left grid cell will always hug the edge with zero padding other than what may be specified with the other `window-padding` options.

If other `window-padding` fields are set and this is `true`, this will still apply. The other padding is applied first and may affect how many grid cells actually exist, and this is applied last in order to balance the padding given a certain viewport size and grid cell size.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-padding-balance
# Balance extra padding between all four window edges (default: false)
window-padding-balance = false
```

## Related

- [`window-padding-x`](window-padding-x.en.md)
- [`window-padding-y`](window-padding-y.en.md)
- [`window-padding-color`](window-padding-color.en.md)
