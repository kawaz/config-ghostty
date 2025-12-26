# toggle_quick_terminal

**Language:** English | [日本語](../../ja/actions/toggle_quick_terminal.ja.md)

## Description

Toggle the quick terminal.

The quick terminal, also known as the "Quake-style" or drop-down terminal, is a terminal window that appears on demand from a keybinding, often sliding in from a screen edge such as the top. This is useful for quick access to a terminal without having to open a new window or tab.

The terminal state is preserved between appearances, so showing the quick terminal after it was already hidden would display the same window instead of creating a new one.

As quick terminals are often useful when other windows are currently focused, they are best used with *global* keybinds. For example, one can define the following key bind to toggle the quick terminal from anywhere within the system by pressing `` Cmd+` ``:

```ini
keybind = global:cmd+backquote=toggle_quick_terminal
```

The quick terminal has some limitations:

- Only one quick terminal instance can exist at a time.

- Unlike normal terminal windows, the quick terminal will not be restored when the application is restarted on systems that support window restoration like macOS.

- On Linux, the quick terminal is only supported on Wayland and not X11, and only on Wayland compositors that support the `wlr-layer-shell-v1` protocol. In practice, this means that only GNOME users would not be able to use this feature.

- On Linux, slide-in animations are only supported on KDE, and when the "Sliding Popups" KWin plugin is enabled.

  If you do not have this plugin enabled, open System Settings > Apps & Windows > Window Management > Desktop Effects, and enable the plugin in the plugin list. Ghostty would then need to be restarted fully for this to take effect.

- Quick terminal tabs are only supported on Linux and not on macOS. This is because tabs on macOS require a title bar.

- On macOS, a fullscreened quick terminal will always be in non-native fullscreen mode. This is a requirement due to how the quick terminal is rendered.

See the various configurations for the quick terminal in the configuration file to customize its behavior.
