---
description: Whether to create an initial window on startup
platform: all
default: "true"
---

# initial-window

**Language:** English | [日本語](../../ja/config/initial-window.ja.md)

## Description

This controls whether an initial window is created when Ghostty is run. Note that if `quit-after-last-window-closed` is `true` and `quit-after-last-window-closed-delay` is set, setting `initial-window` to `false` will mean that Ghostty will quit after the configured delay if no window is ever created. Only implemented on Linux and macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#initial-window
# Whether to create an initial window on startup (default: true)
initial-window = true
```
