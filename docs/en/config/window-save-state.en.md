---
description: Enable saving and restoring window state
platform: macos
default: default
---

# window-save-state

**Language:** English | [日本語](../../ja/config/window-save-state.ja.md)

## Description

Whether to enable saving and restoring window state. Window state includes their position, size, tabs, splits, etc. Some window state requires shell integration, such as preserving working directories. See `shell-integration` for more information.

There are three valid values for this configuration:

- `default` will use the default system behavior. On macOS, this will only save state if the application is forcibly terminated or if it is configured systemwide via Settings.app.

- `never` will never save window state.

- `always` will always save window state whenever Ghostty is exited.

If you change this value to `never` while Ghostty is not running, the next Ghostty launch will NOT restore the window state.

If you change this value to `default` while Ghostty is not running and the previous exit saved state, the next Ghostty launch will still restore the window state. This is because Ghostty cannot know if the previous exit was due to a forced save or not (macOS doesn't provide this information).

If you change this value so that window state is saved while Ghostty is not running, the previous window state will not be restored because Ghostty only saves state on exit if this is enabled.

## Default

```conf
# https://ghostty.org/docs/config/reference#window-save-state
# Enable saving and restoring window state (default: default)
window-save-state = default
```

## Related

- [`shell-integration`](shell-integration.en.md)
