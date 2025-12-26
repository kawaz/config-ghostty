---
description: When to scroll surface to bottom
platform: all
default: keystroke,no-output
---

# scroll-to-bottom

**Language:** English | [日本語](../../ja/config/scroll-to-bottom.ja.md)

## Description

When to scroll the surface to the bottom. The format of this is a list of options to enable separated by commas. If you prefix an option with `no-` then it is disabled. If you omit an option, its default value is used.

Available options:

- `keystroke` If set, scroll the surface to the bottom when the user presses a key that results in data being sent to the PTY (basically anything but modifiers or keybinds that are processed by Ghostty).

- `output` If set, scroll the surface to the bottom if there is new data to display. (Currently unimplemented.)

## Default

```conf
# https://ghostty.org/docs/config/reference#scroll-to-bottom
# When to scroll surface to bottom (default: keystroke,no-output)
scroll-to-bottom = keystroke,no-output
```
