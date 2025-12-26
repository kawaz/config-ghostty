---
description: Font style for italic text
platform: all
default: default
---

# font-style-italic

**Language:** English | [日本語](../../ja/config/font-style-italic.ja.md)

## Description

The named font style to use for italic text. This looks up the style based on the font style string advertised by the font itself. For example, "Iosevka Heavy" has a style of "Heavy".

You can also use this field to completely disable italic font style. If you set the value to literal `false` then italic font style will be disabled. If the running program in the terminal requests italic text, the regular font style will be used instead.

This is only valid if its corresponding [`font-family-italic`](font-family-italic.en.md) is also specified. If no font-family-italic is specified, then the font-style-italic is ignored unless you're disabling the font style.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-style-italic
# Font style for italic text (default: default)
font-style-italic = default
```

## Related

- [`font-style`](font-style.en.md)
- [`font-style-bold`](font-style-bold.en.md)
- [`font-style-bold-italic`](font-style-bold-italic.en.md)
- [`font-family-italic`](font-family-italic.en.md)
