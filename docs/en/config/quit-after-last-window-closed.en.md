# quit-after-last-window-closed

**Language:** English | [日本語](../../ja/config/quit-after-last-window-closed.ja.md)

## Description

Whether or not to quit after the last surface is closed.

This defaults to `false` on macOS since that is standard behavior for a macOS application. On Linux, this defaults to `true` since that is generally expected behavior.

On Linux, if this is `true`, Ghostty can delay quitting fully until a configurable amount of time has passed after the last window is closed. See the documentation of `quit-after-last-window-closed-delay`.

## Default

```conf
# https://ghostty.org/docs/config/reference#quit-after-last-window-closed
# Quit when last window is closed (default: false on macOS, true on Linux)
quit-after-last-window-closed = false
```

## Related

- [`quit-after-last-window-closed-delay`](quit-after-last-window-closed-delay.en.md)
