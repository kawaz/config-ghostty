---
description: Control clipboard read access from terminal programs
platform: all
default: "ask"
---

# clipboard-read

**Language:** English | [日本語](../../ja/config/clipboard-read.ja.md)

## Description

Whether to allow programs running in the terminal to read/write to the system clipboard (OSC 52, for googling). The default is to allow clipboard reading after prompting the user and allow writing unconditionally.

Valid values are:

- `ask`
- `allow`
- `deny`

## Related

- [clipboard-write](clipboard-write.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#clipboard-read
# Control clipboard read access from terminal programs (default: ask)
clipboard-read = ask
```
