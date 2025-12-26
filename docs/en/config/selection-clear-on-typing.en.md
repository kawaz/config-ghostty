---
description: Clear selection when typing
platform: all
default: true
---

# selection-clear-on-typing

**Language:** English | [日本語](../../ja/config/selection-clear-on-typing.ja.md)

## Description

Whether to clear selected text when typing. This defaults to `true`. This is typical behavior for most terminal emulators as well as text input fields. If you set this to `false`, then the selected text will not be cleared when typing.

"Typing" is specifically defined as any non-modifier (shift, control, alt, etc.) keypress that produces data to be sent to the application running within the terminal (e.g. the shell). Additionally, selection is cleared when any preedit or composition state is started (e.g. when typing languages such as Japanese).

If this is `false`, then the selection can still be manually cleared by clicking once or by pressing `escape`.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#selection-clear-on-typing
# Clear selection when typing (default: true)
selection-clear-on-typing = true
```
