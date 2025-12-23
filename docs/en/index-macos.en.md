# Ghostty Configuration Reference (macOS)

## Configuration Options

### Shell & Command

Shell integration and command execution settings

- [abnormal-command-exit-runtime](config/abnormal-command-exit-runtime.en.md) - The number of milliseconds of runtime below which we consider a process exit to be abnormal. This is used to show an error message when the process exits too quickly.
- [command](config/command.en.md) - The command to run, usually a shell. If this is not an absolute path, it'll be looked up in the `PATH`.
- [enquiry-response](config/enquiry-response.en.md) - String to send when we receive `ENQ` (`0x05`) from the command that we are running. Defaults to an empty string if not set.
- [initial-command](config/initial-command.en.md) - This is the same as "command", but only applies to the first terminal surface created when Ghostty starts. Subsequent terminal surfaces will use the `command` configuration.
- [shell-integration](config/shell-integration.en.md) - Whether to enable shell integration auto-injection or not. Shell integration greatly enhances the terminal experience by enabling a number of features: * Working directory reporting so new tabs, splits inherit the previous terminal's working directory.
- [shell-integration-features](config/shell-integration-features.en.md) - Shell integration features to enable. These require our shell integration to be loaded, either automatically via shell-integration or manually.
- [wait-after-command](config/wait-after-command.en.md) - If true, keep the terminal open after the command exits. Normally, the terminal window closes when the running command (such as a shell) exits.
- [window-inherit-working-directory](config/window-inherit-working-directory.en.md) - If true, new windows and tabs will inherit the working directory of the previously focused window. If no window was previously focused, the default working directory will be used (the `working-directory` option).
- [working-directory](config/working-directory.en.md) - The directory to change to after starting the command.

### Text Adjustments

Fine-tuning of text rendering including cell dimensions and decorations

- [adjust-box-thickness](config/adjust-box-thickness.en.md) - Thickness in pixels or percentage adjustment of box drawing characters.
- [adjust-cell-height](config/adjust-cell-height.en.md) - Distance in pixels or percentage adjustment from the bottom of the cell to the text baseline.
- [adjust-cell-width](config/adjust-cell-width.en.md) - All of the configurations behavior adjust various metrics determined by the font. The values can be integers (1, -1, etc.
- [adjust-icon-height](config/adjust-icon-height.en.md) - Height in pixels or percentage adjustment of maximum height for nerd font icons.
- [adjust-overline-position](config/adjust-overline-position.en.md) - Distance in pixels or percentage adjustment from the top of the cell to the top of the overline.
- [adjust-overline-thickness](config/adjust-overline-thickness.en.md) - Thickness in pixels or percentage adjustment of the overline.
- [adjust-strikethrough-position](config/adjust-strikethrough-position.en.md) - Distance in pixels or percentage adjustment from the top of the cell to the top of the strikethrough.
- [adjust-strikethrough-thickness](config/adjust-strikethrough-thickness.en.md) - Thickness in pixels or percentage adjustment of the strikethrough.
- [adjust-underline-position](config/adjust-underline-position.en.md) - Distance in pixels or percentage adjustment from the top of the cell to the top of the underline.
- [adjust-underline-thickness](config/adjust-underline-thickness.en.md) - Thickness in pixels of the underline. See the notes about adjustments in `adjust-cell-width`.

### Cursor

Cursor style, color, opacity, and behavior

- [adjust-cursor-height](config/adjust-cursor-height.en.md) - Height in pixels or percentage adjustment of the cursor. Currently applies to all cursor types: bar, rect, and outlined rect.
- [adjust-cursor-thickness](config/adjust-cursor-thickness.en.md) - Thickness in pixels or percentage adjustment of the bar cursor and outlined rect cursor.
- [cursor-click-to-move](config/cursor-click-to-move.en.md) - Enables the ability to move the cursor at prompts by using `alt+click` on Linux and `option+click` on macOS.
- [cursor-color](config/cursor-color.en.md) - The color of the cursor. If this is not set, a default will be chosen.
- [cursor-opacity](config/cursor-opacity.en.md) - The opacity level (opposite of transparency) of the cursor. A value of 1 is fully opaque and a value of 0 is fully transparent.
- [cursor-style](config/cursor-style.en.md) - The style of the cursor. This sets the default style.
- [cursor-style-blink](config/cursor-style-blink.en.md) - Sets the default blinking state of the cursor. This is just the default state; running programs may override the cursor style using `DECSCUSR` (`CSI q`).
- [cursor-text](config/cursor-text.en.md) - The color of the text under the cursor. If this is not set, a default will be chosen.

### Miscellaneous

Other configuration options

- [alpha-blending](config/alpha-blending.en.md) - What color space to use when performing alpha blending.
- [app-notifications](config/app-notifications.en.md) - Control the in-app notifications that Ghostty shows.
- [class](config/class.en.md) - The setting that will change the application class value.
- [config-default-files](config/config-default-files.en.md) - When this is true, the default configuration file paths will be loaded.
- [config-file](config/config-file.en.md) - Additional configuration files to read. This configuration can be repeated to read multiple configuration files.
- [custom-shader](config/custom-shader.en.md) - Custom shaders to run after the default shaders. This is a file path to a GLSL-syntax shader for all platforms.
- [custom-shader-animation](config/custom-shader-animation.en.md) - If `true` (default), the focused terminal surface will run an animation loop when custom shaders are used. This uses slightly more CPU (generally less than 10%) but allows the shader to animate.
- [desktop-notifications](config/desktop-notifications.en.md) - If `true` (default), applications running in the terminal can show desktop notifications using certain escape sequences such as OSC 9 or OSC 777.
- [env](config/env.en.md) - Extra environment variables to pass to commands launched in a terminal surface. The format is `env=KEY=VALUE`.
- [faint-opacity](config/faint-opacity.en.md) - The opacity level (opposite of transparency) of the faint text. A value of 1 is fully opaque and a value of 0 is fully transparent.
- [freetype-load-flags](config/freetype-load-flags.en.md) - FreeType load flags to enable. The format of this is a list of flags to enable separated by commas.
- [grapheme-width-method](config/grapheme-width-method.en.md) - The method to use for calculating the cell width of a grapheme cluster.
- [input](config/input.en.md) - Data to send as input to the command on startup. The configured `command` will be launched using the typical rules, then the data specified as this input will be written to the pty before any other input can be provided.
- [link-previews](config/link-previews.en.md) - Show link previews for a matched URL. When true, link previews are shown for all matched URLs.
- [link-url](config/link-url.en.md) - Enable URL matching. URLs are matched on hover with control (Linux) or command (macOS) pressed and open using the default system application for the linked URL.
- [maximize](config/maximize.en.md) - Whether to start the window in a maximized state. This setting applies to new windows and does not apply to tabs, splits, etc.
- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.en.md) - Duration (in seconds) of the quick terminal enter and exit animation.
- [quick-terminal-autohide](config/quick-terminal-autohide.en.md) - Automatically hide the quick terminal when focus shifts to another window.
- [quick-terminal-keyboard-interactivity](config/quick-terminal-keyboard-interactivity.en.md) - Determines under which circumstances that the quick terminal should receive keyboard input. See the corresponding [Wayland documentation](https://wayland.
- [quick-terminal-position](config/quick-terminal-position.en.md) - The position of the "quick" terminal window. To learn more about the quick terminal, see the documentation for the `toggle_quick_terminal` binding action.
- [quick-terminal-screen](config/quick-terminal-screen.en.md) - The screen where the quick terminal should show up.
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.en.md) - This configuration option determines the behavior of the quick terminal when switching between macOS spaces. macOS spaces are virtual desktops that can be manually created or are automatically created when an application is in full-screen mode.
- [right-click-action](config/right-click-action.en.md) - The action to take when the user right-clicks on the terminal surface.
- [scroll-to-bottom](config/scroll-to-bottom.en.md) - When to scroll the surface to the bottom. The format of this is a list of options to enable separated by commas.
- [scrollback-limit](config/scrollback-limit.en.md) - The size of the scrollback buffer in bytes. This also includes the active screen.
- [selection-clear-on-copy](config/selection-clear-on-copy.en.md) - Whether to clear selected text after copying. This defaults to `false`.
- [split-divider-color](config/split-divider-color.en.md) - The color of the split divider. If this is not set, a default will be chosen.
- [term](config/term.en.md) - This will be used to set the `TERM` environment variable.
- [title](config/title.en.md) - The title Ghostty will use for the window. This will force the title of the window to be this title at all times and Ghostty will ignore any set title escape sequences programs (such as Neovim) may send.
- [title-report](config/title-report.en.md) - Enables or disabled title reporting (CSI 21 t). This escape sequence allows the running program to query the terminal title.
- [undo-timeout](config/undo-timeout.en.md) - The duration that undo operations remain available. After this time, the operation will be removed from the undo stack and cannot be undone.
- [window-colorspace](config/window-colorspace.en.md) - The color space to use when interpreting terminal colors. "Terminal colors" refers to colors specified in your configuration and colors produced by direct-color SGR sequences.
- [window-new-tab-position](config/window-new-tab-position.en.md) - The position where new tabs are created. Valid values: * `current` - Insert the new tab after the currently focused tab, or at the end if there are no focused tabs.
- [x11-instance-name](config/x11-instance-name.en.md) - This controls the instance name field of the `WM_CLASS` X11 property when running under X11. It has no effect otherwise.

### Terminal Behavior

Terminal behavior and protocol settings

- [auto-update](config/auto-update.en.md) - Control the auto-update functionality of Ghostty. This is only supported on macOS currently, since Linux builds are distributed via package managers that are not centrally controlled by Ghostty.
- [auto-update-channel](config/auto-update-channel.en.md) - The release channel to use for auto-updates. The default value of this matches the release channel of the currently running Ghostty version.
- [confirm-close-surface](config/confirm-close-surface.en.md) - Confirms that a surface should be closed before closing it.
- [image-storage-limit](config/image-storage-limit.en.md) - The total amount of bytes that can be used for image data (e. g.
- [osc-color-report-format](config/osc-color-report-format.en.md) - Sets the reporting format for OSC sequences that request color information.
- [quit-after-last-window-closed](config/quit-after-last-window-closed.en.md) - Whether or not to quit after the last surface is closed.
- [vt-kam-allowed](config/vt-kam-allowed.en.md) - If true, allows the "KAM" mode (ANSI mode 2) to be used within the terminal. KAM disables keyboard input at the request of the application.

### Colors

Terminal color settings including foreground, background, and palette

- [background](config/background.en.md) - Background color for the window. Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color.
- [background-blur](config/background-blur.en.md) - Whether to blur the background when `background-opacity` is less than 1.
- [background-image](config/background-image.en.md) - Background image for the terminal. This should be a path to a PNG or JPEG file, other image formats are not yet supported.
- [background-image-fit](config/background-image-fit.en.md) - Background image fit. Valid values are: * `contain` Preserving the aspect ratio, scale the background image to the largest size that can still be contained within the terminal, so that the whole image is visible.
- [background-image-opacity](config/background-image-opacity.en.md) - Background image opacity. This is relative to the value of `background-opacity`.
- [background-image-position](config/background-image-position.en.md) - Background image position. Valid values are: * `top-left` * `top-center` * `top-right` * `center-left` * `center` * `center-right` * `bottom-left` * `bottom-center` * `bottom-right` The default value is `center`.
- [background-image-repeat](config/background-image-repeat.en.md) - Whether to repeat the background image or not. If this is set to true, the background image will be repeated if there would otherwise be blank space around it because it doesn't completely fill the terminal area.
- [background-opacity](config/background-opacity.en.md) - The opacity level (opposite of transparency) of the background. A value of 1 is fully opaque and a value of 0 is fully transparent.
- [background-opacity-cells](config/background-opacity-cells.en.md) - Applies background opacity to cells with an explicit background color set.
- [bold-color](config/bold-color.en.md) - Modifies the color used for bold text in the terminal.
- [command-palette-entry](config/command-palette-entry.en.md) - Custom entries into the command palette. Each entry requires the title, the corresponding action, and an optional description.
- [foreground](config/foreground.en.md) - Foreground color for the window. Specified as either hex (`#RRGGBB` or `RRGGBB`) or a named X11 color.
- [minimum-contrast](config/minimum-contrast.en.md) - The minimum contrast ratio between the foreground and background colors.
- [palette](config/palette.en.md) - Color palette for the 256 color form that many terminal applications use.
- [selection-background](config/selection-background.en.md) - Whether to clear selected text when typing. This defaults to `true`.
- [selection-foreground](config/selection-foreground.en.md) - The foreground and background color for selection. If this is not set, then the selection color is just the inverted window background and foreground (note: not to be confused with the cell bg/fg).

### Bell

Terminal bell settings

- [bell-audio-path](config/bell-audio-path.en.md) - If `audio` is an enabled bell feature, this is a path to an audio file. If the path is not absolute, it is considered relative to the directory of the configuration file that it is referenced from, or from the current working directory if this is used as a CLI flag.
- [bell-audio-volume](config/bell-audio-volume.en.md) - If `audio` is an enabled bell feature, this is the volume to play the audio file at (relative to the system volume). This is a floating point number ranging from 0.
- [bell-features](config/bell-features.en.md) - Bell features to enable if bell support is available in your runtime. Not all features are available on all runtimes.

### Mouse

Mouse interaction settings

- [click-repeat-interval](config/click-repeat-interval.en.md) - The time in milliseconds between clicks to consider a click a repeat (double, triple, etc. ) or an entirely new single click.
- [focus-follows-mouse](config/focus-follows-mouse.en.md) - If true, when there are multiple split panes, the mouse selects the pane that is focused. This only applies to the currently focused window; e.
- [mouse-hide-while-typing](config/mouse-hide-while-typing.en.md) - Hide the mouse immediately when typing. The mouse becomes visible again when the mouse is used (button, movement, etc.
- [mouse-scroll-multiplier](config/mouse-scroll-multiplier.en.md) - Multiplier for scrolling distance with the mouse wheel.
- [mouse-shift-capture](config/mouse-shift-capture.en.md) - Determines whether running programs can detect the shift key pressed with a mouse click. Typically, the shift key is used to extend mouse selection.

### Clipboard

Clipboard operations and settings

- [clipboard-paste-bracketed-safe](config/clipboard-paste-bracketed-safe.en.md) - If true, bracketed pastes will be considered safe. By default, bracketed pastes are considered safe.
- [clipboard-paste-protection](config/clipboard-paste-protection.en.md) - Require confirmation before pasting text that appears unsafe. This helps prevent a "copy/paste attack" where a user may accidentally execute unsafe commands by pasting text with newlines.
- [clipboard-read](config/clipboard-read.en.md) - Whether to allow programs running in the terminal to read/write to the system clipboard (OSC 52, for googling). The default is to allow clipboard reading after prompting the user and allow writing unconditionally.
- [clipboard-write](config/clipboard-write.en.md) - Trims trailing whitespace on data that is copied to the clipboard. This does not affect data sent to the clipboard via `clipboard-write`.
- [copy-on-select](config/copy-on-select.en.md) - Whether to automatically copy selected text to the clipboard. `true` will prefer to copy to the selection clipboard, otherwise it will copy to the system clipboard.

### Font

Font settings including family, size, style, and rendering

- [font-family](config/font-family.en.md) - The font families to use. You can generate the list of valid values using the CLI: ghostty +list-fonts This configuration can be repeated multiple times to specify preferred fallback fonts when the requested codepoint is not available in the primary font.
- [font-family-bold](config/font-family-bold.en.md) - The named font style to use for each of the requested terminal font styles.
- [font-feature](config/font-feature.en.md) - Apply a font feature. To enable multiple font features you can repeat this multiple times or use a comma-separated list of feature settings.
- [font-shaping-break](config/font-shaping-break.en.md) - Locations to break font shaping into multiple runs.
- [font-size](config/font-size.en.md) - Font size in points. This value can be a non-integer and the nearest integer pixel size will be selected.
- [font-style-bold](config/font-style-bold.en.md) - Control whether Ghostty should synthesize a style if the requested style is not available in the specified font-family.
- [font-thicken](config/font-thicken.en.md) - Draw fonts with a thicker stroke, if supported. This is currently only supported on macOS.
- [font-thicken-strength](config/font-thicken-strength.en.md) - Strength of thickening when `font-thicken` is enabled.
- [font-variation](config/font-variation.en.md) - A repeatable configuration to set one or more font variations values for a variable font. A variable font is a single font, usually with a filename ending in `-VF.
- [font-variation-bold](config/font-variation-bold.en.md) - Force one or a range of Unicode codepoints to map to a specific named font.
- [window-inherit-font-size](config/window-inherit-font-size.en.md) - If true, new windows and tabs will inherit the font size of the previously focused window. If no window was previously focused, the default font size will be used.
- [window-title-font-family](config/window-title-font-family.en.md) - The font that will be used for the application's window and tab titles.

### Window Appearance

Window decoration, theme, and titlebar settings

- [fullscreen](config/fullscreen.en.md) - Start new windows in fullscreen. This setting applies to new windows and does not apply to tabs, splits, etc.
- [macos-non-native-fullscreen](config/macos-non-native-fullscreen.en.md) - If anything other than false, fullscreen mode on macOS will not use the native fullscreen, but make the window fullscreen without animations and using a new space.
- [unfocused-split-fill](config/unfocused-split-fill.en.md) - The color to dim the unfocused split. Unfocused splits are dimmed by rendering a semi-transparent rectangle over the split.
- [unfocused-split-opacity](config/unfocused-split-opacity.en.md) - The opacity level (opposite of transparency) of an unfocused split.
- [window-decoration](config/window-decoration.en.md) - Configure a preference for window decorations. This setting specifies a _preference_; the actual OS, desktop environment, window manager, etc.
- [window-padding-balance](config/window-padding-balance.en.md) - The viewport dimensions are usually not perfectly divisible by the cell size. In this case, some extra padding on the end of a column and the bottom of the final row may exist.
- [window-padding-color](config/window-padding-color.en.md) - The color of the padding area of the window. Valid values are: * `background` - The background color specified in `background`.
- [window-padding-x](config/window-padding-x.en.md) - Horizontal window padding. This applies padding between the terminal cells and the left and right window borders.
- [window-padding-y](config/window-padding-y.en.md) - Vertical window padding. This applies padding between the terminal cells and the top and bottom window borders.
- [window-theme](config/window-theme.en.md) - The theme to use for the windows. Valid values: * `auto` - Determine the theme based on the configured terminal background color.
- [window-titlebar-background](config/window-titlebar-background.en.md) - Background color for the window titlebar. This only takes effect if window-theme is set to ghostty.
- [window-titlebar-foreground](config/window-titlebar-foreground.en.md) - Foreground color for the window titlebar. This only takes effect if window-theme is set to ghostty.
- [window-vsync](config/window-vsync.en.md) - Synchronize rendering with the screen refresh rate. If true, this will minimize tearing and align redraws with the screen but may cause input latency.

### Keybindings

Keyboard binding settings

- [keybind](config/keybind.en.md) - Key bindings. The format is `trigger=action`.

### macOS Specific

macOS-specific settings

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

### Performance

Performance-related settings

- [resize-overlay](config/resize-overlay.en.md) - This controls when resize overlays are shown. Resize overlays are a transient popup that shows the size of the terminal while the surfaces are being resized.
- [resize-overlay-duration](config/resize-overlay-duration.en.md) - If resize overlays are enabled, this controls how long the overlay is visible on the screen before it is hidden. The default is ¾ of a second or 750 ms.
- [resize-overlay-position](config/resize-overlay-position.en.md) - If resize overlays are enabled, this controls the position of the overlay.

### Theming

Theme configuration

- [theme](config/theme.en.md) - A theme to use. This can be a built-in theme name, a custom theme name, or an absolute path to a custom theme file.

### Window Size & Position

Window dimensions and positioning

- [window-height](config/window-height.en.md) - The initial window size. This size is in terminal grid cells by default.
- [window-position-y](config/window-position-y.en.md) - Whether to enable saving and restoring window state. Window state includes their position, size, tabs, splits, etc.
- [window-step-resize](config/window-step-resize.en.md) - Resize the window in discrete increments of the focused surface's cell size.
- [window-width](config/window-width.en.md) - The starting window position. This position is in pixels and is relative to the top-left corner of the primary monitor.

## Actions

### Selection

Text selection operations

- [adjust_selection](actions/adjust_selection.en.md) - adjust_selection: Adjust the current selection in the given direction or position, relative to the cursor.
- [scroll_to_selection](actions/scroll_to_selection.en.md) - scroll_to_selection: Scroll to the selected text.
- [select_all](actions/select_all.en.md) - select_all: Select all text on the screen.
- [write_selection_file](actions/write_selection_file.en.md) - write_selection_file: Write the currently selected text into a temporary file with the specified action.

### Updates

Update checking

- [check_for_updates](actions/check_for_updates.en.md) - check_for_updates: Check for updates. Only implemented on macOS.

### Miscellaneous

Other actions

- [clear_screen](actions/clear_screen.en.md) - clear_screen: Clear the screen and all scrollback.
- [jump_to_prompt](actions/jump_to_prompt.en.md) - jump_to_prompt: Jump the viewport forward or back by the given number of prompts.
- [open_config](actions/open_config.en.md) - open_config: Open the configuration file in the default OS editor.
- [prompt_surface_title](actions/prompt_surface_title.en.md) - prompt_surface_title: Change the title of the current focused surface via a pop-up prompt.
- [quit](actions/quit.en.md) - quit: Quit Ghostty.
- [redo](actions/redo.en.md) - redo: Redo the last undoable action for the focused surface or terminal, if possible. See "undo" for more details on what can and cannot be undone or redone.
- [reset](actions/reset.en.md) - reset: Reset the terminal. This can fix a lot of issues when a running program puts the terminal into a broken state, equivalent to running the `reset` command.
- [text](actions/text.en.md) - text: Send the specified text. Uses Zig string literal syntax.
- [toggle_command_palette](actions/toggle_command_palette.en.md) - toggle_command_palette: Toggle the command palette.
- [toggle_visibility](actions/toggle_visibility.en.md) - toggle_visibility: Show or hide all windows. If all windows become shown, we also ensure Ghostty becomes focused.
- [unbind](actions/unbind.en.md) - unbind: Unbind a previously bound key binding. This cannot unbind bindings that were not bound by Ghostty or the user (e.
- [undo](actions/undo.en.md) - undo: Undo the last undoable action for the focused surface or terminal, if possible. This can undo actions such as closing tabs or windows.
- [write_screen_file](actions/write_screen_file.en.md) - write_screen_file: Write the contents of the screen into a temporary file with the specified action.

### Window Management

Window and surface management

- [close_all_windows](actions/close_all_windows.en.md) - close_all_windows: Close all windows. WARNING: This action has been deprecated and has no effect on either Linux or macOS.
- [close_surface](actions/close_surface.en.md) - close_surface: Close the current "surface", whether that is a window, tab, split, etc.
- [close_window](actions/close_window.en.md) - close_window: Close the current window and all tabs and splits therein.
- [new_window](actions/new_window.en.md) - new_window: Open a new window. If the application isn't currently focused, this will bring it to the front.
- [reload_config](actions/reload_config.en.md) - reload_config: Reload the configuration. The exact meaning depends on the app runtime in use, but this usually involves re-reading the configuration file and applying any changes Note that not all changes can be applied at runtime.
- [reset_window_size](actions/reset_window_size.en.md) - reset_window_size: Reset the window to the default size. The "default size" is the size that a new window would be created with.
- [toggle_fullscreen](actions/toggle_fullscreen.en.md) - toggle_fullscreen: Fullscreen or unfullscreen the current window.
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.en.md) - toggle_window_float_on_top: Toggle whether the terminal window should always float on top of other windows even when unfocused.

### Tab Management

Tab operations

- [close_tab](actions/close_tab.en.md) - close_tab: Close the current tab and all splits therein _or_ close all tabs and splits thein of tabs _other_ than the current tab, depending on the mode.
- [goto_tab](actions/goto_tab.en.md) - goto_tab: Go to the tab with the specific index, starting from 1.
- [last_tab](actions/last_tab.en.md) - last_tab: Go to the last tab.
- [move_tab](actions/move_tab.en.md) - move_tab: Moves a tab by a relative offset. Positive values move the tab forwards, and negative values move it backwards.
- [new_tab](actions/new_tab.en.md) - new_tab: Open a new tab.
- [next_tab](actions/next_tab.en.md) - next_tab: Go to the next tab.
- [previous_tab](actions/previous_tab.en.md) - previous_tab: Go to the previous tab.

### Clipboard

Clipboard operations

- [copy_title_to_clipboard](actions/copy_title_to_clipboard.en.md) - copy_title_to_clipboard: Copy the terminal title to the clipboard. If the terminal title is not set or is empty this has no effect.
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - copy_to_clipboard: Copy the selected text to the clipboard.
- [copy_url_to_clipboard](actions/copy_url_to_clipboard.en.md) - copy_url_to_clipboard: If there is a URL under the cursor, copy it to the default clipboard.
- [paste_from_clipboard](actions/paste_from_clipboard.en.md) - paste_from_clipboard: Paste the contents of the default clipboard.
- [paste_from_selection](actions/paste_from_selection.en.md) - paste_from_selection: Paste the contents of the selection clipboard.

### Inspector & Debug

Development and debugging tools

- [crash](actions/crash.en.md) - crash: Crash Ghostty in the desired thread for the focused surface.
- [inspector](actions/inspector.en.md) - inspector: Control the visibility of the terminal inspector.

### Input & Keys

Input handling and key operations

- [csi](actions/csi.en.md) - csi: Send a CSI sequence. The value should be the CSI sequence without the CSI header (`ESC [` or `\x1b[`).
- [cursor_key](actions/cursor_key.en.md) - cursor_key: Send data to the pty depending on whether cursor key mode is enabled (`application`) or disabled (`normal`).
- [esc](actions/esc.en.md) - esc: Send an `ESC` sequence.
- [ignore](actions/ignore.en.md) - ignore: Ignore this key combination. Ghostty will not process this combination nor forward it to the child process within the terminal, but it may still be processed by the OS or other applications.

### Font & Display

Font size and display adjustments

- [decrease_font_size](actions/decrease_font_size.en.md) - decrease_font_size: Decrease the font size by the specified amount in points (pt).
- [increase_font_size](actions/increase_font_size.en.md) - increase_font_size: Increase the font size by the specified amount in points (pt).
- [reset_font_size](actions/reset_font_size.en.md) - reset_font_size: Reset the font size to the original configured size.
- [set_font_size](actions/set_font_size.en.md) - set_font_size: Set the font size to the specified size in points (pt).

### Split Management

Split pane operations

- [equalize_splits](actions/equalize_splits.en.md) - equalize_splits: Equalize the size of all splits in the current window.
- [goto_split](actions/goto_split.en.md) - goto_split: Focus on a split either in the specified direction (`right`, `down`, `left` and `up`), or in the adjacent split in the order of creation (`previous` and `next`).
- [new_split](actions/new_split.en.md) - new_split: Create a new split in the specified direction.
- [resize_split](actions/resize_split.en.md) - resize_split: Resize the current split in the specified direction and amount in pixels. The two arguments should be joined with a comma (`,`), like in `resize_split:up,10`.
- [toggle_split_zoom](actions/toggle_split_zoom.en.md) - toggle_split_zoom: Zoom in or out of the current split.

### Scrolling

Scrolling operations

- [scroll_page_down](actions/scroll_page_down.en.md) - scroll_page_down: Scroll the screen down by one page.
- [scroll_page_fractional](actions/scroll_page_fractional.en.md) - scroll_page_fractional: Scroll the screen by the specified fraction of a page.
- [scroll_page_lines](actions/scroll_page_lines.en.md) - scroll_page_lines: Scroll the screen by the specified amount of lines.
- [scroll_page_up](actions/scroll_page_up.en.md) - scroll_page_up: Scroll the screen up by one page.
- [scroll_to_bottom](actions/scroll_to_bottom.en.md) - scroll_to_bottom: Scroll to the bottom of the screen.
- [scroll_to_top](actions/scroll_to_top.en.md) - scroll_to_top: Scroll to the top of the screen.
- [write_scrollback_file](actions/write_scrollback_file.en.md) - write_scrollback_file: Write the entire scrollback into a temporary file with the specified action. The action determines what to do with the filepath.

### macOS Specific

macOS-specific actions

- [toggle_secure_input](actions/toggle_secure_input.en.md) - toggle_secure_input: Toggle secure input mode. This is used to prevent apps from monitoring your keyboard input when entering passwords or other sensitive information.
