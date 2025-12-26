---
description: Strength of font thickening when enabled
platform: macos
default: 255
---

# font-thicken-strength

**Language:** English | [日本語](../../ja/config/font-thicken-strength.ja.md)

## Description

Strength of thickening when [`font-thicken`](font-thicken.en.md) is enabled.

Valid values are integers between `0` and `255`. `0` does not correspond to *no* thickening, rather it corresponds to the lightest available thickening.

Has no effect when [`font-thicken`](font-thicken.en.md) is set to `false`.

This is currently only supported on macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-thicken-strength
# Strength of font thickening (default: 255)
font-thicken-strength = 255
```

## Related

- [font-thicken](font-thicken.en.md)
