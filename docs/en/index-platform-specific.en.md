# Platform-Specific Features

## macOS Only

### Configuration Options

- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.en.md) - Duration (in seconds) of the quick terminal enter and exit animation.
- [quick-terminal-screen](config/quick-terminal-screen.en.md) - The screen where the quick terminal should show up.
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.en.md) - This configuration option determines the behavior of the quick terminal when switching between macOS spaces. macOS spaces are virtual desktops that can be manually created or are automatically created when an application is in full-screen mode.
- [undo-timeout](config/undo-timeout.en.md) - The duration that undo operations remain available. After this time, the operation will be removed from the undo stack and cannot be undone.
- [window-colorspace](config/window-colorspace.en.md) - The color space to use when interpreting terminal colors. "Terminal colors" refers to colors specified in your configuration and colors produced by direct-color SGR sequences.
- [font-thicken](config/font-thicken.en.md) - Draw fonts with a thicker stroke, if supported. This is currently only supported on macOS.
- [font-thicken-strength](config/font-thicken-strength.en.md) - Strength of thickening when `font-thicken` is enabled.
- [macos-non-native-fullscreen](config/macos-non-native-fullscreen.en.md) - If anything other than false, fullscreen mode on macOS will not use the native fullscreen, but make the window fullscreen without animations and using a new space.
- [window-theme](config/window-theme.en.md) - The theme to use for the windows. Valid values: * `auto` - Determine the theme based on the configured terminal background color.
- [keybind](config/keybind.en.md) - Key bindings. The format is `trigger=action`.
- [macos-auto-secure-input](config/macos-auto-secure-input.en.md) - If true, Ghostty on macOS will automatically enable the "Secure Input" feature when it detects that a password prompt is being displayed.
- [macos-custom-icon](config/macos-custom-icon.en.md) - The absolute path to the custom icon file. Supported formats include PNG, JPEG, and ICNS.
- [macos-dock-drop-behavior](config/macos-dock-drop-behavior.en.md) - Controls the windowing behavior when dropping a file or folder onto the Ghostty icon in the macOS dock.
- [macos-hidden](config/macos-hidden.en.md) - If true, the macOS icon in the dock and app switcher will be hidden. This is mainly intended for those primarily using the quick-terminal mode.
- [macos-icon](config/macos-icon.en.md) - Customize the macOS app icon. This only affects the icon that appears in the dock, application switcher, etc.
- [macos-icon-frame](config/macos-icon-frame.en.md) - The material to use for the frame of the macOS app icon.
- [macos-icon-ghost-color](config/macos-icon-ghost-color.en.md) - The color of the ghost in the macOS app icon. Note: This configuration is required when `macos-icon` is set to `custom-style`.
- [macos-icon-screen-color](config/macos-icon-screen-color.en.md) - The color of the screen in the macOS app icon. The screen is a linear gradient so you can specify multiple colors that make up the gradient.
- [macos-option-as-alt](config/macos-option-as-alt.en.md) - macOS doesn't have a distinct "alt" key and instead has the "option" key which behaves slightly differently. On macOS by default, the option key plus a character will sometimes produce a Unicode character.
- [macos-secure-input-indication](config/macos-secure-input-indication.en.md) - If true, Ghostty will show a graphical indication when secure input is enabled. This indication is generally recommended to know when secure input is enabled.
- [macos-shortcuts](config/macos-shortcuts.en.md) - Whether macOS Shortcuts are allowed to control Ghostty.
- [macos-titlebar-proxy-icon](config/macos-titlebar-proxy-icon.en.md) - Whether the proxy icon in the macOS titlebar is visible. The proxy icon is the icon that represents the folder of the current working directory.
- [macos-titlebar-style](config/macos-titlebar-style.en.md) - The style of the macOS titlebar. Available values are: "native", "transparent", "tabs", and "hidden".
- [macos-window-buttons](config/macos-window-buttons.en.md) - Whether the window buttons in the macOS titlebar are visible. The window buttons are the colored buttons in the upper left corner of most macOS apps, also known as the traffic lights, that allow you to close, miniaturize, and zoom the window.
- [macos-window-shadow](config/macos-window-shadow.en.md) - Whether to enable the macOS window shadow. The default value is true.
- [window-position-y](config/window-position-y.en.md) - Whether to enable saving and restoring window state. Window state includes their position, size, tabs, splits, etc.
- [window-step-resize](config/window-step-resize.en.md) - Resize the window in discrete increments of the focused surface's cell size.
- [window-width](config/window-width.en.md) - The starting window position. This position is in pixels and is relative to the top-left corner of the primary monitor.

### Actions

- [check_for_updates](actions/check_for_updates.en.md) - check_for_updates: Check for updates. Only implemented on macOS.
- [toggle_visibility](actions/toggle_visibility.en.md) - toggle_visibility: Show or hide all windows. If all windows become shown, we also ensure Ghostty becomes focused.
- [undo](actions/undo.en.md) - undo: Undo the last undoable action for the focused surface or terminal, if possible. This can undo actions such as closing tabs or windows.
- [reset_window_size](actions/reset_window_size.en.md) - reset_window_size: Reset the window to the default size. The "default size" is the size that a new window would be created with.
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.en.md) - toggle_window_float_on_top: Toggle whether the terminal window should always float on top of other windows even when unfocused.
- [toggle_secure_input](actions/toggle_secure_input.en.md) - toggle_secure_input: Toggle secure input mode. This is used to prevent apps from monitoring your keyboard input when entering passwords or other sensitive information.

## Linux Only

### Configuration Options

- [async-backend](config/async-backend.en.md) - Configures the low-level API to use for async IO, eventing, etc.
- [initial-window](config/initial-window.en.md) - This controls whether an initial window is created when Ghostty is run. Note that if `quit-after-last-window-closed` is `true` and `quit-after-last-window-closed-delay` is set, setting `initial-window` to `false` will mean that Ghostty will quit after the configured delay if no window is ever created.
- [window-show-tab-bar](config/window-show-tab-bar.en.md) - Whether to show the tab bar. Valid values: - `always` Always display the tab bar, even when there's only one tab.
- [window-subtitle](config/window-subtitle.en.md) - The text that will be displayed in the subtitle of the window. Valid values: * `false` - Disable the subtitle.
- [quit-after-last-window-closed-delay](config/quit-after-last-window-closed-delay.en.md) - Controls how long Ghostty will stay running after the last open surface has been closed. This only has an effect if `quit-after-last-window-closed` is also set to `true`.
- [gtk-custom-css](config/gtk-custom-css.en.md) - Custom CSS files to be loaded. GTK CSS documentation can be found at the following links: * https://docs.
- [gtk-opengl-debug](config/gtk-opengl-debug.en.md) - Enable or disable GTK's OpenGL debugging logs. The default is `true` for debug builds, `false` for all others.
- [gtk-quick-terminal-layer](config/gtk-quick-terminal-layer.en.md) - The layer of the quick terminal window. The higher the layer, the more windows the quick terminal may conceal.
- [gtk-quick-terminal-namespace](config/gtk-quick-terminal-namespace.en.md) - The namespace for the quick terminal window. This is an identifier that is used by the Wayland compositor and/or scripts to determine the type of layer surfaces and to possibly apply unique effects.
- [gtk-single-instance](config/gtk-single-instance.en.md) - If `true`, the Ghostty GTK application will run in single-instance mode: each new `ghostty` process launched will result in a new window if there is already a running process.
- [gtk-tabs-location](config/gtk-tabs-location.en.md) - Determines the side of the screen that the GTK tab bar will stick to.
- [gtk-titlebar](config/gtk-titlebar.en.md) - When enabled, the full GTK titlebar is displayed instead of your window manager's simple titlebar. The behavior of this option will vary with your window manager.
- [gtk-titlebar-hide-when-maximized](config/gtk-titlebar-hide-when-maximized.en.md) - If this is `true`, the titlebar will be hidden when the window is maximized, and shown when the titlebar is unmaximized. GTK only.
- [gtk-titlebar-style](config/gtk-titlebar-style.en.md) - The style of the GTK titlbar. Available values are `native` and `tabs`.
- [gtk-toolbar-style](config/gtk-toolbar-style.en.md) - Determines the appearance of the top and bottom bars tab bar.
- [gtk-wide-tabs](config/gtk-wide-tabs.en.md) - If `true` (default), then the Ghostty GTK tabs will be "wide. " Wide tabs are the new typical Gnome style where tabs fill their available space.
- [linux-cgroup](config/linux-cgroup.en.md) - Put every surface (tab, split, window) into a dedicated Linux cgroup.
- [linux-cgroup-hard-fail](config/linux-cgroup-hard-fail.en.md) - If this is false, then any cgroup initialization (for linux-cgroup) will be allowed to fail and the failure is ignored. This is useful if you view cgroup isolation as a "nice to have" and not a critical resource management feature, because Ghostty startup will not fail if cgroup APIs fail.
- [linux-cgroup-memory-limit](config/linux-cgroup-memory-limit.en.md) - Memory limit for any individual terminal process (tab, split, window, etc. ) in bytes.
- [linux-cgroup-processes-limit](config/linux-cgroup-processes-limit.en.md) - Number of processes limit for any individual terminal process (tab, split, window, etc. ).

### Actions

- [show_on_screen_keyboard](actions/show_on_screen_keyboard.en.md) - show_on_screen_keyboard: Show the on-screen keyboard if one is present.
- [toggle_quick_terminal](actions/toggle_quick_terminal.en.md) - toggle_quick_terminal: Toggle the quick terminal. The quick terminal, also known as the "Quake-style" or drop-down terminal, is a terminal window that appears on demand from a keybinding, often sliding in from a screen edge such as the top.
- [toggle_window_decorations](actions/toggle_window_decorations.en.md) - toggle_window_decorations: Toggle window decorations (titlebar, buttons, etc. ) for the current window.
- [toggle_tab_overview](actions/toggle_tab_overview.en.md) - toggle_tab_overview: Toggle the tab overview. This is only supported on Linux and when the system's libadwaita version is 1.

## Windows Only

### Configuration Options

No Windows-specific configuration options currently.

### Actions

No Windows-specific actions currently.
