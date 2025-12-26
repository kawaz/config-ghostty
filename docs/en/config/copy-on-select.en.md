---
description: Automatically copy selected text to clipboard
platform: all
default: true (Linux/macOS), false (others)
---

# copy-on-select

**Language:** English | [日本語](../../ja/config/copy-on-select.ja.md)

## Description

Whether to automatically copy selected text to the clipboard. `true` will prefer to copy to the selection clipboard, otherwise it will copy to the system clipboard.

The value `clipboard` will always copy text to the selection clipboard as well as the system clipboard.

Middle-click paste will always use the selection clipboard. Middle-click paste is always enabled even if this is `false`.

The default value is true on Linux and macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#copy-on-select
# Automatically copy selected text to clipboard (default: true)
copy-on-select = true
```

## Related

- [clipboard-trim-trailing-spaces](clipboard-trim-trailing-spaces.en.md)
- [clipboard-write](clipboard-write.en.md)
