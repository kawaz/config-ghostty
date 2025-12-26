# clipboard-paste-protection

**Language:** English | [日本語](../../ja/config/clipboard-paste-protection.ja.md)

## Description

Require confirmation before pasting text that appears unsafe. This helps prevent a "copy/paste attack" where a user may accidentally execute unsafe commands by pasting text with newlines.

## Default

```conf
# https://ghostty.org/docs/config/reference#clipboard-paste-protection
# Require confirmation for unsafe pastes (default: true)
clipboard-paste-protection = true
```

## Related

- [`clipboard-paste-bracketed-safe`](clipboard-paste-bracketed-safe.en.md)
