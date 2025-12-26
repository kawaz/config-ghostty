---
description: Move a tab by a relative offset
platform: all
default: N/A
---

# move_tab

**Language:** English | [日本語](../../ja/actions/move_tab.ja.md)

## Description

Moves a tab by a relative offset.

Positive values move the tab forwards, and negative values move it backwards. If the new position is out of bounds, it is wrapped around cyclically within the tab list.

For example, `move_tab:1` moves the tab one position forwards, and if it was already the last tab in the list, it wraps around and becomes the first tab in the list. Likewise, `move_tab:-1` moves the tab one position backwards, and if it was the first tab, then it will become the last tab.

## Example

```conf
keybind = alt+shift+right=move_tab:1
keybind = alt+shift+left=move_tab:-1
```
