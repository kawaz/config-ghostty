---
description: Confirm before closing a surface
platform: all
default: "true"
---

# confirm-close-surface

**Language:** English | [日本語](../../ja/config/confirm-close-surface.ja.md)

## Description

Confirms that a surface should be closed before closing it.

This defaults to `true`. If set to `false`, surfaces will close without any confirmation. This can also be set to `always`, which will always confirm closing a surface, even if shell integration says a process isn't running.

## Default

```conf
# https://ghostty.org/docs/config/reference#confirm-close-surface
# Confirm before closing a surface (default: true)
confirm-close-surface = true
```
