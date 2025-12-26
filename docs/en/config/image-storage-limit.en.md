---
description: Maximum bytes for image data per terminal screen
platform: all
default: 320000000
---

# image-storage-limit

**Language:** English | [日本語](../../ja/config/image-storage-limit.ja.md)

## Description

The total amount of bytes that can be used for image data (e.g. the Kitty image protocol) per terminal screen. The maximum value is 4,294,967,295 (4GiB). The default is 320MB. If this is set to zero, then all image protocols will be disabled.

This value is separate for primary and alternate screens so the effective limit per surface is double.

## Default

```conf
# https://ghostty.org/docs/config/reference#image-storage-limit
# Maximum bytes for image data per terminal screen (default: 320000000, 320MB)
image-storage-limit = 320000000
```
