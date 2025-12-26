---
description: Navigate to a specific tab by index number
platform: all
default: ""
---

# goto_tab

**Language:** English | [日本語](../../ja/actions/goto_tab.ja.md)

## Description

Go to the tab with the specific index, starting from 1.

If the tab number is higher than the number of tabs, this will go to the last tab.

## Usage

```conf
goto_tab:{number}
```

Example:

```conf
goto_tab:1
goto_tab:2
goto_tab:3
```
