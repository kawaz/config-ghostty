---
description: Synchronize rendering with screen refresh rate
platform: macos
default: true
---

# window-vsync

**Language:** English | [日本語](../../ja/config/window-vsync.ja.md)

## Description

Synchronize rendering with the screen refresh rate. If true, this will minimize tearing and align redraws with the screen but may cause input latency. If false, this will maximize redraw frequency but may cause tearing, and under heavy load may use more CPU and power.

This defaults to true because out-of-sync rendering on macOS can cause kernel panics (macOS 14.4+) and performance issues for external displays over some hardware such as DisplayLink. If you want to minimize input latency, set this to false with the known aforementioned risks.

Changing this value at runtime will only affect new terminals.

This setting is only supported currently on macOS.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-vsync
# Synchronize rendering with screen refresh rate (default: true)
window-vsync = true
```
