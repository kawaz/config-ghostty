---
description: Automatically hide quick terminal when focus shifts
platform: all
default: "true"
---

# quick-terminal-autohide

**Language:** English | [日本語](../../ja/config/quick-terminal-autohide.ja.md)

## Description

Automatically hide the quick terminal when focus shifts to another window. Set it to false for the quick terminal to remain open even when it loses focus.

Defaults to true on macOS and on false on Linux/BSD. This is because global shortcuts on Linux require system configuration and are considerably less accessible than on macOS, meaning that it is more preferable to keep the quick terminal open until the user has completed their task. This default may change in the future.

## Default

```conf
# https://ghostty.org/docs/config/reference#quick-terminal-autohide
# Automatically hide quick terminal when focus shifts (default: true on macOS, false on Linux)
quick-terminal-autohide = true
```
