---
description: Control in-app notifications in Ghostty
platform: linux
default: clipboard-copy,config-reload
---

# app-notifications

**Language:** English | [日本語](../../ja/config/app-notifications.ja.md)

## Description

Control the in-app notifications that Ghostty shows.

On Linux (GTK), in-app notifications show up as toasts. Toasts appear overlaid on top of the terminal window. They are used to show information that is not critical but may be important.

Possible notifications are:

- `clipboard-copy` (default: true) - Show a notification when text is copied to the clipboard.
- `config-reload` (default: true) - Show a notification when the configuration is reloaded.

To specify a notification to enable, specify the name of the notification. To specify a notification to disable, prefix the name with `no-`. For example, to disable `clipboard-copy`, set this configuration to `no-clipboard-copy`. To enable it, set this configuration to `clipboard-copy`.

Multiple notifications can be enabled or disabled by separating them with a comma.

A value of "false" will disable all notifications. A value of "true" will enable all notifications.

This configuration only applies to GTK.

Available since: 1.1.0

## Default

```conf
# https://ghostty.org/docs/config/reference#app-notifications
# Control in-app notifications in Ghostty (default: clipboard-copy,config-reload)
app-notifications = clipboard-copy,config-reload
```

## Related

- [`desktop-notifications`](desktop-notifications.en.md)
