---
description: FreeType font rendering load flags
platform: linux
default: hinting,no-force-autohint,no-monochrome,autohint
---

# freetype-load-flags

**Language:** English | [日本語](../../ja/config/freetype-load-flags.ja.md)

## Description

FreeType load flags to enable. The format of this is a list of flags to enable separated by commas. If you prefix a flag with `no-` then it is disabled. If you omit a flag, its default value is used, so you must explicitly disable flags you don't want. You can also use `true` or `false` to turn all flags on or off.

This configuration only applies to Ghostty builds that use FreeType. This is usually the case only for Linux builds. macOS uses CoreText and does not have an equivalent configuration.

Available flags:

* `hinting` - Enable or disable hinting. Enabled by default.
* `force-autohint` - Always use the freetype auto-hinter instead of the font's native hinter. Disabled by default.
* `monochrome` - Instructs renderer to use 1-bit monochrome rendering. This will disable anti-aliasing, and probably not look very good unless you're using a pixel font. Disabled by default.
* `autohint` - Enable the freetype auto-hinter. Enabled by default.

Example: `hinting`, `no-hinting`, `force-autohint`, `no-force-autohint`

## Default

```conf
# https://ghostty.org/docs/config/reference#freetype-load-flags
# FreeType load flags (default: hinting,no-force-autohint,no-monochrome,autohint)
freetype-load-flags = hinting,no-force-autohint,no-monochrome,autohint
```
