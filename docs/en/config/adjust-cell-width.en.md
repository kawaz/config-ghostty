---
description: Adjust cell width for character alignment
platform: all
default: ""
---

# adjust-cell-width

**Language:** English | [日本語](../../ja/config/adjust-cell-width.ja.md)

## Description

All of the configurations adjust various metrics determined by the font. The values can be integers (1, -1, etc.) or a percentage (20%, -15%, etc.). In each case, the values represent the amount to change the original value.

For example, a value of `1` increases the value by 1; it does not set it to literally 1. A value of `20%` increases the value by 20%. And so on.

There is little to no validation on these values so the wrong values (e.g. `-100%`) can cause the terminal to be unusable. Use with caution and reason.

Some values are clamped to minimum or maximum values. This can make it appear that certain values are ignored. For example, many `*-thickness` adjustments cannot go below 1px.

## Related

- [adjust-cell-height](adjust-cell-height.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#adjust-cell-width
# Adjust cell width for character alignment (default: "")
adjust-cell-width =
```
