---
description: Value for TERM environment variable
platform: all
default: xterm-ghostty
---

# term

**Language:** English | [日本語](../../ja/config/term.ja.md)

## Description

This will be used to set the `TERM` environment variable. Set this with an `xterm` prefix because vim uses that to enable key protocols (specifically this will enable `modifyOtherKeys`), among other features. An option exists in vim to modify this: `:set keyprotocol=ghostty:kitty`, however a bug in the implementation prevents it from working properly.

## Default

```conf
# https://ghostty.org/docs/config/reference#term
# Value for TERM environment variable (default: xterm-ghostty)
term = xterm-ghostty
```
