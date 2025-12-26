---
description: Map specific Unicode codepoints to named fonts
platform: all
default: (empty)
---

# font-codepoint-map

**Language:** English | [日本語](../../ja/config/font-codepoint-map.ja.md)

## Description

Force one or a range of Unicode codepoints to map to a specific named font. This is useful if you want to support special symbols or if you want to use specific glyphs that render better for your specific font.

The syntax is `codepoint=fontname` where `codepoint` is either a single codepoint or a range. Codepoints must be specified as full Unicode hex values, such as `U+ABCD`. Codepoints ranges are specified as `U+ABCD-U+DEFG`. You can specify multiple ranges for the same font separated by commas, such as `U+ABCD-U+DEFG,U+1234-U+5678=fontname`. The font name is the same value as you would use for [`font-family`](font-family.en.md).

This configuration can be repeated multiple times to specify multiple codepoint mappings.

Changing this configuration at runtime will only affect new terminals, i.e. new windows, tabs, etc.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-codepoint-map
# Map specific Unicode codepoints to named fonts (default: empty)
font-codepoint-map =
```

## Related

- [font-family](font-family.en.md)
