---
description: Trim trailing whitespace when copying to clipboard
platform: all
default: true
---

# clipboard-trim-trailing-spaces

**Language:** English | [日本語](../../ja/config/clipboard-trim-trailing-spaces.ja.md)

## Description

Trims trailing whitespace on data that is copied to the clipboard. This does not affect data sent to the clipboard via [`clipboard-write`](clipboard-write.en.md).

## Default

```conf
# https://ghostty.org/docs/config/reference#clipboard-trim-trailing-spaces
# Trim trailing whitespace when copying to clipboard (default: true)
clipboard-trim-trailing-spaces = true
```

## Related

- [`copy-on-select`](copy-on-select.en.md)
- [`copy_to_clipboard`](../actions/copy_to_clipboard.en.md)
- [`clipboard-write`](clipboard-write.en.md)
