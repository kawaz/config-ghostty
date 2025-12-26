---
description: Close current tab or all other tabs
platform: all
default: N/A
---

# close_tab

**Language:** English | [日本語](../../ja/actions/close_tab.ja.md)

## Description

Close the current tab and all splits therein _or_ close all tabs and splits therein of tabs _other_ than the current tab, depending on the mode.

If the mode is not specified, defaults to closing the current tab.

This might trigger a close confirmation popup, depending on the value of the [`confirm-close-surface`](../config/confirm-close-surface.en.md) configuration setting.

## Usage

```conf
keybind = ctrl+w=close_tab
keybind = ctrl+shift+w=close_tab:other
```
