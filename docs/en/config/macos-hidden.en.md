---
description: Hide macOS app icon in dock and app switcher
platform: macos
default: never
---

# macos-hidden

**Language:** English | [日本語](../../ja/config/macos-hidden.ja.md)

## Description

If true, the macOS icon in the dock and app switcher will be hidden. This is mainly intended for those primarily using the quick-terminal mode.

Note that setting this to true means that keyboard layout changes will no longer be automatic.

Control whether macOS app is excluded from the dock and app switcher, a "hidden" state. This is mainly intended for those primarily using quick-terminal mode, but is a general configuration for any use case.

Available values:

- `never` - The macOS app is never hidden.
- `always` - The macOS app is always hidden.

Note: When the macOS application is hidden, keyboard layout changes will no longer be automatic. This is a limitation of macOS.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-hidden
# Hide macOS app icon in dock and app switcher (default: never)
macos-hidden = never
```

## Related

- [`quick-terminal-position`](quick-terminal-position.en.md)
- [`quick-terminal-autohide`](quick-terminal-autohide.en.md)
