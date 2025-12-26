---
description: Inherit working directory from previously focused window
platform: all
default: "true"
---

# window-inherit-working-directory

**Language:** English | [日本語](../../ja/config/window-inherit-working-directory.ja.md)

## Description

If true, new windows and tabs will inherit the working directory of the previously focused window. If no window was previously focused, the default working directory will be used (the `working-directory` option).

## Default

```conf
# https://ghostty.org/docs/config/reference#window-inherit-working-directory
# Inherit working directory from previously focused window (default: true)
window-inherit-working-directory = true
```

## Related

- [`working-directory`](working-directory.en.md)
