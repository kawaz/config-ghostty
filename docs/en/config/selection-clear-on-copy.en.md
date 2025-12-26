---
description: Clear selected text after copying to clipboard
platform: all
default: false
---

# selection-clear-on-copy

**Language:** English | [日本語](../../ja/config/selection-clear-on-copy.ja.md)

## Description

Whether to clear selected text after copying. This defaults to `false`.

When set to `true`, the selection will be automatically cleared after any copy operation that invokes the `copy_to_clipboard` keyboard binding. Importantly, this will not clear the selection if the copy operation was invoked via `copy-on-select`.

When set to `false`, the selection remains visible after copying, allowing to see what was copied and potentially perform additional operations on the same selection.

## Default

```conf
# https://ghostty.org/docs/config/reference#selection-clear-on-copy
# Clear selected text after copying to clipboard (default: false)
selection-clear-on-copy = false
```

## Related

- [`copy-on-select`](copy-on-select.en.md)
- [`selection-clear-on-typing`](selection-clear-on-typing.en.md)
