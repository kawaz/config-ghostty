---
description: Namespace identifier for quick terminal window
platform: linux
default: ghostty-quick-terminal
---

# gtk-quick-terminal-namespace

**Language:** English | [日本語](../../ja/config/gtk-quick-terminal-namespace.ja.md)

## Description

The namespace for the quick terminal window.

This is an identifier that is used by the Wayland compositor and/or scripts to determine the type of layer surfaces and to possibly apply unique effects.

GTK Wayland only.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-quick-terminal-namespace
# Namespace identifier for quick terminal window (default: ghostty-quick-terminal)
gtk-quick-terminal-namespace = ghostty-quick-terminal
```
