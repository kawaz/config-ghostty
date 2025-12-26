---
description: Opacity level of unfocused split panes
platform: all
default: "0.7"
---

# unfocused-split-opacity

**Language:** English | [日本語](../../ja/config/unfocused-split-opacity.ja.md)

## Description

The opacity level (opposite of transparency) of an unfocused split. Unfocused splits by default are slightly faded out to make it easier to see which split is focused. To disable this feature, set this value to 1.

A value of 1 is fully opaque and a value of 0 is fully transparent. Because "0" is not useful (it makes the window look very weird), the minimum value is 0.15. This value still looks weird but you can at least see what's going on. A value outside of the range 0.15 to 1 will be clamped to the nearest valid value.

## Default

```conf
# https://ghostty.org/docs/config/reference#unfocused-split-opacity
# Opacity level of unfocused split panes (default: 0.7)
unfocused-split-opacity = 0.7
```
