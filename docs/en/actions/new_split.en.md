---
description: Create a new split in the specified direction
platform: all
default: N/A
---

# new_split

**Language:** English | [日本語](../../ja/actions/new_split.ja.md)

## Description

Create a new split in the specified direction.

Valid arguments:

- `right`, `down`, `left`, `up`

  Creates a new split in the corresponding direction.

- `auto`

  Creates a new split along the larger direction. For example, if the parent split is currently wider than it is tall, then a left-right split would be created, and vice versa.

## Example

```conf
keybind = ctrl+shift+right=new_split:right
keybind = ctrl+shift+down=new_split:down
keybind = ctrl+shift+left=new_split:left
keybind = ctrl+shift+up=new_split:up
keybind = ctrl+shift+a=new_split:auto
```
