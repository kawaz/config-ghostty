---
description: Font style for bold italic text
platform: all
default: default
---

# font-style-bold-italic

**Language:** English | [日本語](../../ja/config/font-style-bold-italic.ja.md)

## Description

The named font style to use for bold italic text. This looks up the style based on the font style string advertised by the font itself. For example, "Iosevka Heavy" has a style of "Heavy".

You can also use this field to completely disable bold italic font style. If you set the value to literal `false` then bold italic font style will be disabled. If the running program in the terminal requests bold italic text, the regular font style will be used instead.

This is only valid if its corresponding [`font-family-bold-italic`](font-family-bold-italic.en.md) is also specified. If no font-family-bold-italic is specified, then the font-style-bold-italic is ignored unless you're disabling the font style.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-style-bold-italic
# Font style for bold italic text (default: default)
font-style-bold-italic = default
```

## Related

- [`font-style`](font-style.en.md)
- [`font-style-bold`](font-style-bold.en.md)
- [`font-style-italic`](font-style-italic.en.md)
- [`font-family-bold-italic`](font-family-bold-italic.en.md)
