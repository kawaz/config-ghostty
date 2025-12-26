---
description: Font style for normal text
platform: all
default: default
---

# font-style

**Language:** English | [日本語](../../ja/config/font-style.ja.md)

## Description

The named font style to use for each of the requested terminal font styles. This looks up the style based on the font style string advertised by the font itself. For example, "Iosevka Heavy" has a style of "Heavy".

You can also use these fields to completely disable a font style. If you set the value of the configuration below to literal `false` then that font style will be disabled. If the running program in the terminal requests a disabled font style, the regular font style will be used instead.

These are only valid if its corresponding font-family is also specified. If no font-family is specified, then the font-style is ignored unless you're disabling the font style.

## Related

- [font-style-bold](font-style-bold.en.md)
- [font-style-italic](font-style-italic.en.md)
- [font-style-bold-italic](font-style-bold-italic.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#font-style
# Font style for normal text (default: default)
font-style = default
```
