---
description: Unbind a previously bound key binding
platform: all
default:
---

# unbind

**Language:** English | [日本語](../../ja/actions/unbind.ja.md)

## Description

Unbind a previously bound key binding.

This cannot unbind bindings that were not bound by Ghostty or the user (e.g. bindings set by the OS or some other application).

## Example

```conf
# https://ghostty.org/docs/config/reference#unbind
# Unbind a previously bound key binding
keybind = ctrl+c=unbind
```
