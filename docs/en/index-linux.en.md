# Ghostty Configuration Reference (Linux)

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
- [async-backend](config/async-backend.en.md) - Configures the low-level API to use for async IO, eventing, etc.
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
- [initial-window](config/initial-window.en.md) - This controls whether an initial window is created when Ghostty is run. Note that if `quit-after-last-window-closed` is `true` and `quit-after-last-window-closed-delay` is set, setting `initial-window` to `false` will mean that Ghostty will quit after the configured delay if no window is ever created.
- [input](config/input.en.md) - Data to send as input to the command on startup. The configured `command` will be launched using the typical rules, then the data specified as this input will be written to the pty before any other input can be provided.
- [link-previews](config/link-previews.en.md) - Show link previews for a matched URL. When true, link previews are shown for all matched URLs.
- [link-url](config/link-url.en.md) - Enable URL matching. URLs are matched on hover with control (Linux) or command (macOS) pressed and open using the default system application for the linked URL.
- [maximize](config/maximize.en.md) - Whether to start the window in a maximized state. This setting applies to new windows and does not apply to tabs, splits, etc.
- [quick-terminal-autohide](config/quick-terminal-autohide.en.md) - Automatically hide the quick terminal when focus shifts to another window.
- [quick-terminal-keyboard-interactivity](config/quick-terminal-keyboard-interactivity.en.md) - Determines under which circumstances that the quick terminal should receive keyboard input. See the corresponding [Wayland documentation](https://wayland.
- [quick-terminal-position](config/quick-terminal-position.en.md) - The position of the "quick" terminal window. To learn more about the quick terminal, see the documentation for the `toggle_quick_terminal` binding action.
- [right-click-action](config/right-click-action.en.md) - The action to take when the user right-clicks on the terminal surface.
- [scroll-to-bottom](config/scroll-to-bottom.en.md) - When to scroll the surface to the bottom. The format of this is a list of options to enable separated by commas.
- [scrollback-limit](config/scrollback-limit.en.md) - The size of the scrollback buffer in bytes. This also includes the active screen.
- [selection-clear-on-copy](config/selection-clear-on-copy.en.md) - Whether to clear selected text after copying. This defaults to `false`.
- [split-divider-color](config/split-divider-color.en.md) - The color of the split divider. If this is not set, a default will be chosen.
- [term](config/term.en.md) - This will be used to set the `TERM` environment variable.
- [title](config/title.en.md) - The title Ghostty will use for the window. This will force the title of the window to be this title at all times and Ghostty will ignore any set title escape sequences programs (such as Neovim) may send.
- [title-report](config/title-report.en.md) - Enables or disabled title reporting (CSI 21 t). This escape sequence allows the running program to query the terminal title.
- [window-new-tab-position](config/window-new-tab-position.en.md) - The position where new tabs are created. Valid values: * `current` - Insert the new tab after the currently focused tab, or at the end if there are no focused tabs.
- [window-show-tab-bar](config/window-show-tab-bar.en.md) - Whether to show the tab bar. Valid values: - `always` Always display the tab bar, even when there's only one tab.
- [window-subtitle](config/window-subtitle.en.md) - The text that will be displayed in the subtitle of the window. Valid values: * `false` - Disable the subtitle.
- [x11-instance-name](config/x11-instance-name.en.md) - This controls the instance name field of the `WM_CLASS` X11 property when running under X11. It has no effect otherwise.

### Terminal Behavior

Terminal behavior and protocol settings

- [auto-update](config/auto-update.en.md) - Control the auto-update functionality of Ghostty. This is only supported on macOS currently, since Linux builds are distributed via package managers that are not centrally controlled by Ghostty.
- [auto-update-channel](config/auto-update-channel.en.md) - The release channel to use for auto-updates. The default value of this matches the release channel of the currently running Ghostty version.
- [confirm-close-surface](config/confirm-close-surface.en.md) - Confirms that a surface should be closed before closing it.
- [image-storage-limit](config/image-storage-limit.en.md) - The total amount of bytes that can be used for image data (e. g.
- [osc-color-report-format](config/osc-color-report-format.en.md) - Sets the reporting format for OSC sequences that request color information.
- [quit-after-last-window-closed](config/quit-after-last-window-closed.en.md) - Whether or not to quit after the last surface is closed.
- [quit-after-last-window-closed-delay](config/quit-after-last-window-closed-delay.en.md) - Controls how long Ghostty will stay running after the last open surface has been closed. This only has an effect if `quit-after-last-window-closed` is also set to `true`.
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
- [font-variation](config/font-variation.en.md) - A repeatable configuration to set one or more font variations values for a variable font. A variable font is a single font, usually with a filename ending in `-VF.
- [font-variation-bold](config/font-variation-bold.en.md) - Force one or a range of Unicode codepoints to map to a specific named font.
- [window-inherit-font-size](config/window-inherit-font-size.en.md) - If true, new windows and tabs will inherit the font size of the previously focused window. If no window was previously focused, the default font size will be used.
- [window-title-font-family](config/window-title-font-family.en.md) - The font that will be used for the application's window and tab titles.

### Window Appearance

Window decoration, theme, and titlebar settings

- [fullscreen](config/fullscreen.en.md) - Start new windows in fullscreen. This setting applies to new windows and does not apply to tabs, splits, etc.
- [unfocused-split-fill](config/unfocused-split-fill.en.md) - The color to dim the unfocused split. Unfocused splits are dimmed by rendering a semi-transparent rectangle over the split.
- [unfocused-split-opacity](config/unfocused-split-opacity.en.md) - The opacity level (opposite of transparency) of an unfocused split.
- [window-decoration](config/window-decoration.en.md) - Configure a preference for window decorations. This setting specifies a _preference_; the actual OS, desktop environment, window manager, etc.
- [window-padding-balance](config/window-padding-balance.en.md) - The viewport dimensions are usually not perfectly divisible by the cell size. In this case, some extra padding on the end of a column and the bottom of the final row may exist.
- [window-padding-color](config/window-padding-color.en.md) - The color of the padding area of the window. Valid values are: * `background` - The background color specified in `background`.
- [window-padding-x](config/window-padding-x.en.md) - Horizontal window padding. This applies padding between the terminal cells and the left and right window borders.
- [window-padding-y](config/window-padding-y.en.md) - Vertical window padding. This applies padding between the terminal cells and the top and bottom window borders.
- [window-titlebar-background](config/window-titlebar-background.en.md) - Background color for the window titlebar. This only takes effect if window-theme is set to ghostty.
- [window-titlebar-foreground](config/window-titlebar-foreground.en.md) - Foreground color for the window titlebar. This only takes effect if window-theme is set to ghostty.
- [window-vsync](config/window-vsync.en.md) - Synchronize rendering with the screen refresh rate. If true, this will minimize tearing and align redraws with the screen but may cause input latency.

### Linux / GTK Specific

Linux and GTK-specific settings

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

## Actions

### Selection

Text selection operations

- [adjust_selection](actions/adjust_selection.en.md) - adjust_selection: Adjust the current selection in the given direction or position, relative to the cursor.
- [scroll_to_selection](actions/scroll_to_selection.en.md) - scroll_to_selection: Scroll to the selected text.
- [select_all](actions/select_all.en.md) - select_all: Select all text on the screen.
- [write_selection_file](actions/write_selection_file.en.md) - write_selection_file: Write the currently selected text into a temporary file with the specified action.

### Miscellaneous

Other actions

- [clear_screen](actions/clear_screen.en.md) - clear_screen: Clear the screen and all scrollback.
- [jump_to_prompt](actions/jump_to_prompt.en.md) - jump_to_prompt: Jump the viewport forward or back by the given number of prompts.
- [open_config](actions/open_config.en.md) - open_config: Open the configuration file in the default OS editor.
- [prompt_surface_title](actions/prompt_surface_title.en.md) - prompt_surface_title: Change the title of the current focused surface via a pop-up prompt.
- [quit](actions/quit.en.md) - quit: Quit Ghostty.
- [redo](actions/redo.en.md) - redo: Redo the last undoable action for the focused surface or terminal, if possible. See "undo" for more details on what can and cannot be undone or redone.
- [reset](actions/reset.en.md) - reset: Reset the terminal. This can fix a lot of issues when a running program puts the terminal into a broken state, equivalent to running the `reset` command.
- [show_on_screen_keyboard](actions/show_on_screen_keyboard.en.md) - show_on_screen_keyboard: Show the on-screen keyboard if one is present.
- [text](actions/text.en.md) - text: Send the specified text. Uses Zig string literal syntax.
- [toggle_command_palette](actions/toggle_command_palette.en.md) - toggle_command_palette: Toggle the command palette.
- [toggle_maximize](actions/toggle_maximize.en.md) - toggle_maximize: Maximize or unmaximize the current window.
- [toggle_quick_terminal](actions/toggle_quick_terminal.en.md) - toggle_quick_terminal: Toggle the quick terminal. The quick terminal, also known as the "Quake-style" or drop-down terminal, is a terminal window that appears on demand from a keybinding, often sliding in from a screen edge such as the top.
- [unbind](actions/unbind.en.md) - unbind: Unbind a previously bound key binding. This cannot unbind bindings that were not bound by Ghostty or the user (e.
- [write_screen_file](actions/write_screen_file.en.md) - write_screen_file: Write the contents of the screen into a temporary file with the specified action.

### Window Management

Window and surface management

- [close_all_windows](actions/close_all_windows.en.md) - close_all_windows: Close all windows. WARNING: This action has been deprecated and has no effect on either Linux or macOS.
- [close_surface](actions/close_surface.en.md) - close_surface: Close the current "surface", whether that is a window, tab, split, etc.
- [close_window](actions/close_window.en.md) - close_window: Close the current window and all tabs and splits therein.
- [new_window](actions/new_window.en.md) - new_window: Open a new window. If the application isn't currently focused, this will bring it to the front.
- [reload_config](actions/reload_config.en.md) - reload_config: Reload the configuration. The exact meaning depends on the app runtime in use, but this usually involves re-reading the configuration file and applying any changes Note that not all changes can be applied at runtime.
- [toggle_fullscreen](actions/toggle_fullscreen.en.md) - toggle_fullscreen: Fullscreen or unfullscreen the current window.
- [toggle_window_decorations](actions/toggle_window_decorations.en.md) - toggle_window_decorations: Toggle window decorations (titlebar, buttons, etc. ) for the current window.

### Tab Management

Tab operations

- [close_tab](actions/close_tab.en.md) - close_tab: Close the current tab and all splits therein _or_ close all tabs and splits thein of tabs _other_ than the current tab, depending on the mode.
- [goto_tab](actions/goto_tab.en.md) - goto_tab: Go to the tab with the specific index, starting from 1.
- [last_tab](actions/last_tab.en.md) - last_tab: Go to the last tab.
- [move_tab](actions/move_tab.en.md) - move_tab: Moves a tab by a relative offset. Positive values move the tab forwards, and negative values move it backwards.
- [new_tab](actions/new_tab.en.md) - new_tab: Open a new tab.
- [next_tab](actions/next_tab.en.md) - next_tab: Go to the next tab.
- [previous_tab](actions/previous_tab.en.md) - previous_tab: Go to the previous tab.
- [toggle_tab_overview](actions/toggle_tab_overview.en.md) - toggle_tab_overview: Toggle the tab overview. This is only supported on Linux and when the system's libadwaita version is 1.

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
- [show_gtk_inspector](actions/show_gtk_inspector.en.md) - show_gtk_inspector: Show the GTK inspector. Has no effect on macOS.

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
