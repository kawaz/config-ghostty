---
description: Method for calculating grapheme cluster cell width
platform: all
default: unicode
---

# grapheme-width-method

**Language:** English | [日本語](../../ja/config/grapheme-width-method.ja.md)

## Description

The method to use for calculating the cell width of a grapheme cluster. The default value is `unicode` which uses the Unicode standard to determine grapheme width. This results in correct grapheme width but may result in cursor-desync issues with some programs (such as shells) that may use a legacy method such as `wcswidth`.

Valid values are:

- `legacy` - Use a legacy method to determine grapheme width, such as wcswidth. This maximizes compatibility with legacy programs but may result in incorrect grapheme width for certain graphemes such as skin-tone emoji, non-English characters, etc.

  This is called "legacy" and not something more specific because the behavior is undefined and we want to retain the ability to modify it. For example, we may or may not use libc `wcswidth` now or in the future.

- `unicode` - Use the Unicode standard to determine grapheme width.

If a running program explicitly enables terminal mode 2027, then `unicode` width will be forced regardless of this configuration. When mode 2027 is reset, this configuration will be used again.

This configuration can be changed at runtime but will not affect existing terminals. Only new terminals will use the new configuration.

## Default

```conf
# https://ghostty.org/docs/config/reference#grapheme-width-method
# Method for calculating grapheme cluster cell width (default: unicode)
grapheme-width-method = unicode
```
