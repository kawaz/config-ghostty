---
description: Adjust current selection in the given direction
platform: all
default: N/A
---

# adjust_selection

**Language:** English | [日本語](../../ja/actions/adjust_selection.ja.md)

## Description

Adjust the current selection in the given direction or position, relative to the cursor.

WARNING: This does not create a new selection, and does nothing when there currently isn't one.

Valid arguments are:

- `left`, `right`

  Adjust the selection one cell to the left or right respectively.

- `up`, `down`

  Adjust the selection one line upwards or downwards respectively.

- `page_up`, `page_down`

  Adjust the selection one page upwards or downwards respectively.

- `home`, `end`

  Adjust the selection to the top-left or the bottom-right corner of the screen respectively.

- `beginning_of_line`, `end_of_line`

  Adjust the selection to the beginning or the end of the line respectively.

## Example

```conf
keybind = shift+left=adjust_selection:left
keybind = shift+right=adjust_selection:right
keybind = shift+up=adjust_selection:up
keybind = shift+down=adjust_selection:down
```
