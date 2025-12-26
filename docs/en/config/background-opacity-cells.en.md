---
description: Apply opacity to cells with explicit background color
platform: all
default: "false"
---

# background-opacity-cells

**Language:** English | [日本語](../../ja/config/background-opacity-cells.ja.md)

## Description

Applies background opacity to cells with an explicit background color set.

Normally, `background-opacity` is only applied to the window background. If a cell has an explicit background color set, such as red, then that background color will be fully opaque. An effect of this is that some terminal applications that repaint the background color of the terminal such as a Neovim and Tmux may not respect the `background-opacity` (by design).

Setting this to `true` will apply the `background-opacity` to all cells regardless of whether they have an explicit background color set or not.

## Default

```conf
# https://ghostty.org/docs/config/reference#background-opacity-cells
# Apply opacity to cells with explicit background color (default: false)
background-opacity-cells = false
```

## Related

- [`background-opacity`](background-opacity.en.md)
