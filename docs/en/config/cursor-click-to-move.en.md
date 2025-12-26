---
description: Enable cursor movement at prompts using alt/option+click
platform: all
default: true
---

# cursor-click-to-move

**Language:** English | [日本語](../../ja/config/cursor-click-to-move.ja.md)

## Description

Enables the ability to move the cursor at prompts by using `alt+click` on Linux and `option+click` on macOS.

This feature requires shell integration (specifically prompt marking via `OSC 133`) and only works in primary screen mode. Alternate screen applications like vim usually have their own version of this feature but this configuration doesn't control that.

It should be noted that this feature works by translating your desired position into a series of synthetic arrow key movements, so some weird behavior around edge cases are to be expected. This is unfortunately how this feature is implemented across terminals because there isn't any other way to implement it.

## Default

```conf
# https://ghostty.org/docs/config/reference#cursor-click-to-move
# Enable cursor movement at prompts (default: true)
cursor-click-to-move = true
```

## Related

- [shell-integration](shell-integration.en.md)
- [cursor-style](cursor-style.en.md)
