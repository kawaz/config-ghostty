---
description: Default cursor style in the terminal
platform: all
default: block
---

# cursor-style

**Language:** English | [日本語](../../ja/config/cursor-style.ja.md)

## Description

The style of the cursor. This sets the default style. A running program can still request an explicit cursor style using escape sequences (such as `CSI q`). Shell configurations will often request specific cursor styles.

Note that shell integration will automatically set the cursor to a bar at a prompt, regardless of this configuration. You can disable that behavior by specifying `shell-integration-features = no-cursor` or disabling shell integration entirely.

Valid values are:

* `block`
* `bar`
* `underline`
* `block_hollow`

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-style
# Default cursor style (default: block)
cursor-style = block
```

## Related

- [cursor-opacity](cursor-opacity.en.md)
- [cursor-color](cursor-color.en.md)
- [shell-integration](shell-integration.en.md)
