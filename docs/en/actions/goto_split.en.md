---
description: Focus on a split in the specified direction
platform: all
default: N/A
---

# goto_split

**Language:** English | [日本語](../../ja/actions/goto_split.ja.md)

## Description

Focus on a split either in the specified direction (`right`, `down`, `left` and `up`), or in the adjacent split in the order of creation (`previous` and `next`).

## Example

```conf
keybind = alt+right=goto_split:right
keybind = alt+down=goto_split:down
keybind = alt+left=goto_split:left
keybind = alt+up=goto_split:up
keybind = alt+n=goto_split:next
keybind = alt+p=goto_split:previous
```

## Related

- [`new_split`](new_split.en.md)
- [`resize_split`](resize_split.en.md)
- [`toggle_split_zoom`](toggle_split_zoom.en.md)
