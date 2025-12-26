---
description: Control clipboard write access from terminal programs
platform: all
default: "allow"
---

# clipboard-write

**Language:** English | [日本語](../../ja/config/clipboard-write.ja.md)

## Description

Whether to allow programs running in the terminal to read/write to the system clipboard (OSC 52, for googling). The default is to allow clipboard reading after prompting the user and allow writing unconditionally.

Valid values are:

- `ask`
- `allow`
- `deny`

## Related

- [clipboard-read](clipboard-read.en.md)

## Default

```conf
# https://ghostty.org/docs/config/reference#clipboard-write
# Control clipboard write access from terminal programs (default: allow)
clipboard-write = allow
```
