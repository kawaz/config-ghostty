# Platform-Specific Features

**Language:** English | [日本語](../ja/index-platform-specific.ja.md)

**Platform Index:** [All](index-all.en.md) | [macOS](index-macos.en.md) | [Linux](index-linux.en.md) | Platform-Specific

---

## macOS Only

### Configuration Options
- [font-thicken](config/font-thicken.en.md) - Draw fonts with a thicker stroke on macOS
- [font-thicken-strength](config/font-thicken-strength.en.md) - Strength of font thickening when enabled
- [window-position-x](config/window-position-x.en.md) - Starting window X position in pixels
- [window-position-y](config/window-position-y.en.md) - Starting window Y position in pixels
- [window-step-resize](config/window-step-resize.en.md) - Resize window in discrete increments of cell size
- [window-colorspace](config/window-colorspace.en.md) - Color space for interpreting terminal colors
- [window-vsync](config/window-vsync.en.md) - Synchronize rendering with screen refresh rate
- [window-save-state](config/window-save-state.en.md) - Enable saving and restoring window state
- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.en.md) - Duration of quick terminal animation
- [quick-terminal-screen](config/quick-terminal-screen.en.md) - Screen where quick terminal appears
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.en.md) - Quick terminal behavior when switching spaces
- [macos-icon](config/macos-icon.en.md) - Customize the macOS app icon appearance
- [macos-icon-frame](config/macos-icon-frame.en.md) - Material finish for macOS app icon frame
- [macos-icon-ghost-color](config/macos-icon-ghost-color.en.md) - Color of ghost in macOS app icon
- [macos-icon-screen-color](config/macos-icon-screen-color.en.md) - Gradient colors for the screen in macOS app icon
- [macos-custom-icon](config/macos-custom-icon.en.md) - Absolute path to custom macOS app icon file
- [macos-titlebar-style](config/macos-titlebar-style.en.md) - Style of the macOS titlebar (native, transparent, tabs, hidden)
- [macos-titlebar-proxy-icon](config/macos-titlebar-proxy-icon.en.md) - Show or hide the proxy icon in the macOS titlebar
- [macos-window-shadow](config/macos-window-shadow.en.md) - Enable or disable macOS window shadow
- [macos-window-buttons](config/macos-window-buttons.en.md) - Visibility of window buttons in macOS titlebar
- [macos-non-native-fullscreen](config/macos-non-native-fullscreen.en.md) - Use non-native fullscreen on macOS
- [macos-option-as-alt](config/macos-option-as-alt.en.md) - Treat macOS Option key as Alt key
- [macos-secure-input-indication](config/macos-secure-input-indication.en.md) - Show graphical indication when secure input is enabled
- [macos-auto-secure-input](config/macos-auto-secure-input.en.md) - Auto-enable secure input on password prompts
- [macos-shortcuts](config/macos-shortcuts.en.md) - Allow macOS Shortcuts to control Ghostty
- [macos-hidden](config/macos-hidden.en.md) - Hide macOS app icon in dock and app switcher
- [macos-dock-drop-behavior](config/macos-dock-drop-behavior.en.md) - Behavior when dropping files on the Ghostty dock icon
- [auto-update](config/auto-update.en.md) - Control auto-update functionality for Ghostty
- [auto-update-channel](config/auto-update-channel.en.md) - Release channel for auto-updates
- [undo-timeout](config/undo-timeout.en.md) - Duration that undo operations remain available

### Actions
- [undo](actions/undo.en.md) - Undo the last undoable action for the focused surface
- [toggle_secure_input](actions/toggle_secure_input.en.md) - Toggle secure input mode to prevent keyboard monitoring
- [toggle_visibility](actions/toggle_visibility.en.md) - Show or hide all windows
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.en.md) - Toggle window to always float on top of others
- [reset_window_size](actions/reset_window_size.en.md) - Reset the window to the default size
- [check_for_updates](actions/check_for_updates.en.md) - Check for available Ghostty updates

## Linux Only

### Configuration Options
- [window-subtitle](config/window-subtitle.en.md) - Text to display in the window subtitle
- [window-titlebar-background](config/window-titlebar-background.en.md) - Background color for the window titlebar
- [window-titlebar-foreground](config/window-titlebar-foreground.en.md) - Foreground color for the window titlebar
- [window-show-tab-bar](config/window-show-tab-bar.en.md) - Control visibility of the tab bar
- [gtk-titlebar](config/gtk-titlebar.en.md) - Display full GTK titlebar instead of window manager titlebar
- [gtk-titlebar-style](config/gtk-titlebar-style.en.md) - Style of the GTK titlebar (native or tabs)
- [gtk-titlebar-hide-when-maximized](config/gtk-titlebar-hide-when-maximized.en.md) - Hide titlebar when window is maximized
- [gtk-tabs-location](config/gtk-tabs-location.en.md) - Position of the GTK tab bar (top, bottom, or hidden)
- [gtk-wide-tabs](config/gtk-wide-tabs.en.md) - Make GTK tabs fill available space (wide style)
- [gtk-toolbar-style](config/gtk-toolbar-style.en.md) - Appearance style for GTK toolbar and tab bars
- [gtk-single-instance](config/gtk-single-instance.en.md) - Run Ghostty GTK application in single-instance mode
- [gtk-custom-css](config/gtk-custom-css.en.md) - Load custom CSS files for GTK styling
- [gtk-opengl-debug](config/gtk-opengl-debug.en.md) - Enable or disable GTK OpenGL debugging logs
- [gtk-quick-terminal-layer](config/gtk-quick-terminal-layer.en.md) - Layer position of the quick terminal window
- [gtk-quick-terminal-namespace](config/gtk-quick-terminal-namespace.en.md) - Namespace identifier for quick terminal window
- [linux-cgroup](config/linux-cgroup.en.md) - Enable Linux cgroup resource isolation for surfaces
- [linux-cgroup-memory-limit](config/linux-cgroup-memory-limit.en.md) - Memory limit for terminal processes
- [linux-cgroup-processes-limit](config/linux-cgroup-processes-limit.en.md) - Process limit for individual terminal process using cgroups
- [linux-cgroup-hard-fail](config/linux-cgroup-hard-fail.en.md) - Fail Ghostty startup if cgroup initialization fails
- [freetype-load-flags](config/freetype-load-flags.en.md) - FreeType font rendering load flags
- [async-backend](config/async-backend.en.md) - Low-level API to use for async IO and eventing
- [class](config/class.en.md) - Application class for WM_CLASS and DBus connection
- [x11-instance-name](config/x11-instance-name.en.md) - Set the X11 WM_CLASS instance name
- [quit-after-last-window-closed-delay](config/quit-after-last-window-closed-delay.en.md) - Delay before quitting after last window is closed
- [bell-audio-volume](config/bell-audio-volume.en.md) - Volume level for bell audio
- [bell-audio-path](config/bell-audio-path.en.md) - Path to audio file for bell notification
- [app-notifications](config/app-notifications.en.md) - Control in-app notifications in Ghostty

### Actions
- [toggle_window_decorations](actions/toggle_window_decorations.en.md) - Toggle window decorations (titlebar, buttons, etc.)
- [toggle_tab_overview](actions/toggle_tab_overview.en.md) - Toggle the tab overview window
- [toggle_maximize](actions/toggle_maximize.en.md) - Toggle maximized state of the current window
- [show_gtk_inspector](actions/show_gtk_inspector.en.md) - Show the GTK inspector
- [show_on_screen_keyboard](actions/show_on_screen_keyboard.en.md) - Show on-screen keyboard
- [prompt_surface_title](actions/prompt_surface_title.en.md) - Change current surface title via popup prompt (requires libadwaita)

## Cross-Platform (macOS and Linux)

### Configuration Options
- [window-theme](config/window-theme.en.md) - Window theme appearance

## Cross-Platform (All Platforms)

### Configuration Options
- [font-family](config/font-family.en.md) - Font family for the terminal
- [font-size](config/font-size.en.md) - Font size in points for the terminal
- [cursor-color](config/cursor-color.en.md) - Color of the terminal cursor
- [cursor-style](config/cursor-style.en.md) - Default cursor style in the terminal
- [background](config/background.en.md) - Background color for the terminal window
- [background-opacity](config/background-opacity.en.md) - Set the opacity level of the background
- [foreground](config/foreground.en.md) - Foreground text color
- [theme](config/theme.en.md) - Select a color theme for the terminal
- [window-width](config/window-width.en.md) - Initial window width in terminal grid cells
- [window-height](config/window-height.en.md) - Initial window height in terminal grid cells
- [window-decoration](config/window-decoration.en.md) - Configure window decoration preference
- [keybind](config/keybind.en.md) - Configure key bindings for terminal actions
- [shell-integration](config/shell-integration.en.md) - Enable shell integration auto-injection for enhanced features
- [command](config/command.en.md) - The command to run as the terminal shell

### Actions
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - Copy the currently selected text to clipboard
- [paste_from_clipboard](actions/paste_from_clipboard.en.md) - Paste contents of the default clipboard
- [new_tab](actions/new_tab.en.md) - Open a new tab
- [new_window](actions/new_window.en.md) - Open a new window
- [new_split](actions/new_split.en.md) - Create a new split in the specified direction
- [toggle_fullscreen](actions/toggle_fullscreen.en.md) - Fullscreen or unfullscreen the current window
- [toggle_quick_terminal](actions/toggle_quick_terminal.en.md) - Toggle the quick terminal window
- [quit](actions/quit.en.md) - Quit Ghostty application
