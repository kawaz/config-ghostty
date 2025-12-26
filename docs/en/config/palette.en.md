---
description: Color palette for the 256 color terminal mode
platform: all
default: ""
---

# palette

**Language:** English | [日本語](../../ja/config/palette.ja.md)

## Description

Color palette for the 256 color form that many terminal applications use. The syntax of this configuration is `N=COLOR` where `N` is 0 to 255 (for the 256 colors in the terminal color table) and `COLOR` is a typical RGB color code such as `#AABBCC` or `AABBCC`, or a named X11 color.

The palette index can be in decimal, binary, octal, or hexadecimal. Decimal is assumed unless a prefix is used: `0b` for binary, `0o` for octal, and `0x` for hexadecimal.

For definitions on the color indices and what they canonically map to, [see this cheat sheet](https://www.ditig.com/256-colors-cheat-sheet).

## Default

The default palette is the standard 256-color palette. This configuration uses 268 lines for the default palette definitions. Please refer to the source files for the complete default palette.
