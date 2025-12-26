---
description: Quick terminal behavior when switching spaces
platform: macos
default: move
---

# quick-terminal-space-behavior

**Language:** English | [日本語](../../ja/config/quick-terminal-space-behavior.ja.md)

## Description

This configuration option determines the behavior of the quick terminal when switching between macOS spaces. macOS spaces are virtual desktops that can be manually created or are automatically created when an application is in full-screen mode.

Valid values are:

- `move` - When switching to another space, the quick terminal will also moved to the current space.
- `remain` - The quick terminal will stay only in the space where it was originally opened and will not follow when switching to another space.

The default value is `move`.

Only implemented on macOS.
On Linux the behavior is always equivalent to `move`.

Available since: 1.1.0

## Default

```conf
# https://ghostty.org/docs/config/reference#quick-terminal-space-behavior
# Quick terminal behavior when switching spaces (default: move)
quick-terminal-space-behavior = move
```
