# auto-update

**Language:** English | [日本語](../../ja/config/auto-update.ja.md)

## Description

Control the auto-update functionality of Ghostty. This is only supported on macOS currently, since Linux builds are distributed via package managers that are not centrally controlled by Ghostty.

Checking or downloading an update does not send any information to the project beyond standard network information mandated by the underlying protocols. To put it another way: Ghostty doesn't explicitly add any tracking to the update process. The update process works by downloading information about the latest version and comparing it client-side to the current version.

Valid values are:

- `off` - Disable auto-updates.
- `check` - Check for updates and notify the user if an update is available, but do not automatically download or install the update.
- `download` - Check for updates, automatically download the update, notify the user, but do not automatically install the update.

If unset, we defer to Sparkle's default behavior, which respects the preference stored in the standard user defaults (`defaults(1)`).

Changing this value at runtime works after a small delay.

## Default

```conf
# https://ghostty.org/docs/config/reference#auto-update
# Auto-update behavior (default: unset)
auto-update =
```

## Platform

macOS only

## Related

- [`auto-update-channel`](auto-update-channel.en.md)
