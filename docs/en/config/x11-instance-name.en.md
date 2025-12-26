---
description: Set the X11 WM_CLASS instance name
platform: linux
default: ghostty
---

# x11-instance-name

**Language:** English | [日本語](../../ja/config/x11-instance-name.ja.md)

## Description

This controls the instance name field of the `WM_CLASS` X11 property when running under X11. It has no effect otherwise.

The default is `ghostty`.

This only affects GTK builds.

## Default

```conf
# https://ghostty.org/docs/config/reference#x11-instance-name
# Set the X11 WM_CLASS instance name (default: ghostty)
x11-instance-name =
```
