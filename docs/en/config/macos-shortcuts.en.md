---
description: Allow macOS Shortcuts to control Ghostty
platform: macos
default: ask
---

# macos-shortcuts

**Language:** English | [日本語](../../ja/config/macos-shortcuts.ja.md)

## Description

Whether macOS Shortcuts are allowed to control Ghostty.

Ghostty exposes a number of actions that allow Shortcuts to control and interact with Ghostty. This includes creating new terminals, sending text to terminals, running commands, invoking any keybind action, etc.

This is a powerful feature but can be a security risk if a malicious shortcut is able to be installed and executed. Therefore, this configuration allows you to disable this feature.

Valid values are:

- `ask` - Ask the user whether for permission. Ghostty will remember this choice and never ask again. This is similar to other macOS permissions such as microphone access, camera access, etc.
- `allow` - Allow Shortcuts to control Ghostty without asking.
- `deny` - Deny Shortcuts from controlling Ghostty.

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-shortcuts
# Allow macOS Shortcuts to control Ghostty (default: ask)
macos-shortcuts = ask
```
