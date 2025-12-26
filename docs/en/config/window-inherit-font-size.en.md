---
description: Inherit font size from previously focused window
platform: all
default: true
---

# window-inherit-font-size

**Language:** English | [日本語](../../ja/config/window-inherit-font-size.ja.md)

## Description

If true, new windows and tabs will inherit the font size of the previously focused window. If no window was previously focused, the default font size will be used. If this is false, the default font size specified in the configuration [`font-size`](font-size.en.md) will be used.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-inherit-font-size
# Inherit font size from previously focused window (default: true)
window-inherit-font-size = true
```

## Related

- [font-size](font-size.en.md)
- [window-inherit-working-directory](window-inherit-working-directory.en.md)
