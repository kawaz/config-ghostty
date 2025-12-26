---
description: Auto-enable secure input on password prompts
platform: macos
default: true
---

# macos-auto-secure-input

**Language:** English | [日本語](../../ja/config/macos-auto-secure-input.ja.md)

## Description

If true, Ghostty on macOS will automatically enable the "Secure Input" feature when it detects that a password prompt is being displayed.

"Secure Input" is a macOS security feature that prevents applications from reading keyboard events. This can always be enabled manually using the `Ghostty > Secure Keyboard Entry` menu item.

Note that automatic password prompt detection is based on heuristics and may not always work as expected. Specifically, it does not work over SSH connections, but there may be other cases where it also doesn't work.

A reason to disable this feature is if you find that it is interfering with legitimate accessibility software (or software that uses the accessibility APIs), since secure input prevents any application from reading keyboard events.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-auto-secure-input
# Auto-enable secure input on password prompts (default: true)
macos-auto-secure-input = true
```

## Related

- [macos-secure-input-indication](macos-secure-input-indication.en.md)
