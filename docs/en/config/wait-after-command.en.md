---
description: Keep the terminal open after the command exits
platform: all
default: "false"
---

# wait-after-command

**Language:** English | [日本語](../../ja/config/wait-after-command.ja.md)

## Description

If true, keep the terminal open after the command exits. Normally, the terminal window closes when the running command (such as a shell) exits. With this true, the terminal window will stay open until any keypress is received.

This is primarily useful for scripts or debugging.

## Default

```conf
# https://ghostty.org/docs/config/reference#wait-after-command
# Keep the terminal open after the command exits (default: false)
wait-after-command = false
```
