---
description: Default cursor blinking state
platform: all
default: ""
---

# cursor-style-blink

**Language:** English | [日本語](../../ja/config/cursor-style-blink.ja.md)

## Description

Sets the default blinking state of the cursor. This is just the default state; running programs may override the cursor style using `DECSCUSR` (`CSI q`).

If this is not set, the cursor blinks by default. Note that this is not the same as a "true" value, as noted below.

If this is not set at all (`null`), then Ghostty will respect DEC Mode 12 (AT&T cursor blink) as an alternate approach to turning blinking on/off. If this is set to any value other than null, DEC mode 12 will be ignored but `DECSCUSR` will still be respected.

Valid values are:

- ` ` (blank)
- `true`
- `false`

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-style-blink
# Default cursor blinking state (default: "")
cursor-style-blink =
```
