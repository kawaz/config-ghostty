---
description: Show graphical indication when secure input is enabled
platform: macos
default: true
---

# macos-secure-input-indication

**Language:** English | [日本語](../../ja/config/macos-secure-input-indication.ja.md)

## Description

If true, Ghostty will show a graphical indication when secure input is enabled. This indication is generally recommended to know when secure input is enabled.

Normally, secure input is only active when a password prompt is displayed or it is manually (and typically temporarily) enabled. However, if you always have secure input enabled, the indication can be distracting and you may want to disable it.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-secure-input-indication
# Show graphical indication when secure input is enabled (default: true)
macos-secure-input-indication = true
```

## Related

- [`macos-auto-secure-input`](macos-auto-secure-input.en.md)
- [`toggle_secure_input`](../actions/toggle_secure_input.en.md)
