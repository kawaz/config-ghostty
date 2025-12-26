---
description: Control the opacity level of the cursor
platform: all
default: "1"
---

# cursor-opacity

**Language:** English | [日本語](../../ja/config/cursor-opacity.ja.md)

## Description

The opacity level (opposite of transparency) of the cursor. A value of 1 is fully opaque and a value of 0 is fully transparent. A value less than 0 or greater than 1 will be clamped to the nearest valid value. Note that a sufficiently small value such as 0.3 may be effectively invisible and may make it difficult to find the cursor.

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-opacity
# Control the opacity level of the cursor (default: 1)
cursor-opacity = 1
```
