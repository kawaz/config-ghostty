---
description: Set font variation axes for bold text
platform: all
default: (none)
---

# font-variation-bold

**Language:** English | [日本語](../../ja/config/font-variation-bold.ja.md)

## Description

A repeatable configuration to set one or more font variations values for bold text in a variable font. A variable font is a single font, usually with a filename ending in `-VF.ttf` or `-VF.otf` that contains one or more configurable axes for things such as weight, slant, etc. Not all fonts support variations; only fonts that explicitly state they are variable fonts will work.

The format of this is `id=value` where `id` is the axis identifier. An axis identifier is always a 4 character string, such as `wght`. To get the list of supported axes, look at your font documentation or use a font inspection tool.

Invalid ids and values are usually ignored. For example, if a font only supports weights from 100 to 700, setting `wght=800` will do nothing (it will not be clamped to 700). You must consult your font's documentation to see what values are supported.

Common axes are: `wght` (weight), `slnt` (slant), `ital` (italic), `opsz` (optical size), `wdth` (width), `GRAD` (gradient), etc.

## Example

```conf
font-variation-bold = wght=800,wdth=85
```

## Related

- [`font-variation`](font-variation.en.md)
- [`font-variation-italic`](font-variation-italic.en.md)
- [`font-variation-bold-italic`](font-variation-bold-italic.en.md)
