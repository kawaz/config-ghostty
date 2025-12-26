---
description: Font style for bold text
platform: all
default: default
---

# font-style-bold

**Language:** English | [日本語](../../ja/config/font-style-bold.ja.md)

## Description

The named font style to use for bold text. This looks up the style based on the font style string advertised by the font itself. For example, "Iosevka Heavy" has a style of "Heavy".

You can also use this field to completely disable bold font style. If you set the value to literal `false` then bold font style will be disabled. If the running program in the terminal requests bold text, the regular font style will be used instead.

This is only valid if its corresponding [`font-family-bold`](font-family-bold.en.md) is also specified. If no font-family-bold is specified, then the font-style-bold is ignored unless you're disabling the font style.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-style-bold
# Font style for bold text (default: default)
font-style-bold = default
```

## Related

- [`font-style`](font-style.en.md)
- [`font-style-italic`](font-style-italic.en.md)
- [`font-style-bold-italic`](font-style-bold-italic.en.md)
- [`font-family-bold`](font-family-bold.en.md)
