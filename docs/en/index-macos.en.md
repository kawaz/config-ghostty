# Ghostty Configuration Reference (macOS)

**Language:** English | [日本語](../ja/index-macos.ja.md)

**Platform Index:** [All](index-all.en.md) | macOS | [Linux](index-linux.en.md) | [Platform-Specific](index-platform-specific.en.md)

---

## Configuration Options

### Font
- [font-family](config/font-family.en.md) - Font family for the terminal
- [font-family-bold](config/font-family-bold.en.md) - Font family for bold text
- [font-family-italic](config/font-family-italic.en.md) - Font family for italic text
- [font-family-bold-italic](config/font-family-bold-italic.en.md) - Font family for bold italic text
- [font-size](config/font-size.en.md) - Font size in points for the terminal
- [font-style](config/font-style.en.md) - Font style for normal text
- [font-style-bold](config/font-style-bold.en.md) - Font style for bold text
- [font-style-italic](config/font-style-italic.en.md) - Font style for italic text
- [font-style-bold-italic](config/font-style-bold-italic.en.md) - Font style for bold italic text
- [font-variation](config/font-variation.en.md) - Set font variation axes for variable fonts
- [font-variation-bold](config/font-variation-bold.en.md) - Set font variation axes for bold text
- [font-variation-italic](config/font-variation-italic.en.md) - Set font variation axes for italic text
- [font-variation-bold-italic](config/font-variation-bold-italic.en.md) - Set font variation axes for bold italic text
- [font-synthetic-style](config/font-synthetic-style.en.md) - Enable synthesized font styles when unavailable
- [font-feature](config/font-feature.en.md) - Apply font feature settings
- [font-shaping-break](config/font-shaping-break.en.md) - Control font shaping break points for text rendering
- [font-thicken](config/font-thicken.en.md) - Draw fonts with a thicker stroke on macOS
- [font-thicken-strength](config/font-thicken-strength.en.md) - Strength of font thickening when enabled
- [font-codepoint-map](config/font-codepoint-map.en.md) - Map specific Unicode codepoints to named fonts

### Cursor
- [cursor-color](config/cursor-color.en.md) - Color of the terminal cursor
- [cursor-text](config/cursor-text.en.md) - Color of the text under the cursor
- [cursor-style](config/cursor-style.en.md) - Default cursor style in the terminal
- [cursor-style-blink](config/cursor-style-blink.en.md) - Default cursor blinking state
- [cursor-opacity](config/cursor-opacity.en.md) - Control the opacity level of the cursor
- [cursor-click-to-move](config/cursor-click-to-move.en.md) - Enable cursor movement at prompts using alt/option+click
- [adjust-cursor-height](config/adjust-cursor-height.en.md) - Adjust cursor height in pixels or percentage
- [adjust-cursor-thickness](config/adjust-cursor-thickness.en.md) - Adjust cursor bar and rect thickness

### Background
- [background](config/background.en.md) - Background color for the terminal window
- [background-opacity](config/background-opacity.en.md) - Set the opacity level of the background
- [background-opacity-cells](config/background-opacity-cells.en.md) - Apply opacity to cells with explicit background color
- [background-blur](config/background-blur.en.md) - Enable or disable background blur effect
- [background-image](config/background-image.en.md) - Background image file path for the terminal
- [background-image-opacity](config/background-image-opacity.en.md) - Opacity of background image relative to background color
- [background-image-fit](config/background-image-fit.en.md) - Scale background image to fit terminal
- [background-image-position](config/background-image-position.en.md) - Position of the background image within the terminal
- [background-image-repeat](config/background-image-repeat.en.md) - Repeat background image to fill terminal area
- [alpha-blending](config/alpha-blending.en.md) - Color space to use for alpha blending operations

### Colors & Theme
- [foreground](config/foreground.en.md) - Foreground text color
- [bold-color](config/bold-color.en.md) - Color used for bold text in the terminal
- [palette](config/palette.en.md) - Color palette for the 256 color terminal mode
- [minimum-contrast](config/minimum-contrast.en.md) - Minimum contrast ratio for foreground and background colors
- [theme](config/theme.en.md) - Select a color theme for the terminal
- [selection-background](config/selection-background.en.md) - Background color for text selection
- [selection-foreground](config/selection-foreground.en.md) - Foreground color for text selection
- [faint-opacity](config/faint-opacity.en.md) - Control the opacity level of faint text

### Window Size & Position
- [window-width](config/window-width.en.md) - Initial window width in terminal grid cells
- [window-height](config/window-height.en.md) - Initial window height in terminal grid cells
- [window-position-x](config/window-position-x.en.md) - Starting window X position in pixels
- [window-position-y](config/window-position-y.en.md) - Starting window Y position in pixels
- [maximize](config/maximize.en.md) - Start new windows in a maximized state
- [fullscreen](config/fullscreen.en.md) - Start new windows in fullscreen mode
- [window-step-resize](config/window-step-resize.en.md) - Resize window in discrete increments of cell size

### Window Appearance
- [window-decoration](config/window-decoration.en.md) - Configure window decoration preference
- [window-theme](config/window-theme.en.md) - Window theme appearance
- [window-colorspace](config/window-colorspace.en.md) - Color space for interpreting terminal colors
- [window-vsync](config/window-vsync.en.md) - Synchronize rendering with screen refresh rate
- [window-save-state](config/window-save-state.en.md) - Enable saving and restoring window state
- [title](config/title.en.md) - Title to use for the window
- [window-padding-x](config/window-padding-x.en.md) - Horizontal padding between terminal cells and window borders
- [window-padding-y](config/window-padding-y.en.md) - Vertical padding between terminal cells and window borders
- [window-padding-balance](config/window-padding-balance.en.md) - Balance extra padding between all four window edges
- [window-padding-color](config/window-padding-color.en.md) - Color of the window padding area
- [window-title-font-family](config/window-title-font-family.en.md) - Font family for window and tab titles

### Tabs
- [window-new-tab-position](config/window-new-tab-position.en.md) - Position for newly created tabs

### Split Panes
- [unfocused-split-fill](config/unfocused-split-fill.en.md) - Color to dim unfocused split panes
- [unfocused-split-opacity](config/unfocused-split-opacity.en.md) - Opacity level of unfocused split panes
- [split-divider-color](config/split-divider-color.en.md) - The color of the split divider

### Scrollback
- [scrollback-limit](config/scrollback-limit.en.md) - Maximum size of scrollback buffer in bytes
- [scroll-to-bottom](config/scroll-to-bottom.en.md) - When to scroll surface to bottom

### Clipboard
- [clipboard-read](config/clipboard-read.en.md) - Control clipboard read access from terminal programs
- [clipboard-write](config/clipboard-write.en.md) - Control clipboard write access from terminal programs
- [clipboard-trim-trailing-spaces](config/clipboard-trim-trailing-spaces.en.md) - Trim trailing whitespace when copying to clipboard
- [clipboard-paste-protection](config/clipboard-paste-protection.en.md) - Require confirmation before pasting unsafe text
- [clipboard-paste-bracketed-safe](config/clipboard-paste-bracketed-safe.en.md) - Treat bracketed pastes as safe without confirmation
- [copy-on-select](config/copy-on-select.en.md) - Automatically copy selected text to clipboard

### Selection
- [selection-clear-on-copy](config/selection-clear-on-copy.en.md) - Clear selected text after copying to clipboard
- [selection-clear-on-typing](config/selection-clear-on-typing.en.md) - Clear selection when typing

### Shell & Command
- [command](config/command.en.md) - The command to run as the terminal shell
- [initial-command](config/initial-command.en.md) - Command to run in the first terminal surface
- [working-directory](config/working-directory.en.md) - Initial working directory for terminal
- [shell-integration](config/shell-integration.en.md) - Enable shell integration auto-injection for enhanced features
- [shell-integration-features](config/shell-integration-features.en.md) - Features to enable for shell integration
- [wait-after-command](config/wait-after-command.en.md) - Keep the terminal open after the command exits
- [abnormal-command-exit-runtime](config/abnormal-command-exit-runtime.en.md) - Threshold for abnormal process exit detection
- [env](config/env.en.md) - Extra environment variables for launched commands
- [term](config/term.en.md) - Value for TERM environment variable

### Keyboard & Input
- [keybind](config/keybind.en.md) - Configure key bindings for terminal actions
- [input](config/input.en.md) - Data to send as input to the command on startup
- [mouse-shift-capture](config/mouse-shift-capture.en.md) - Whether running programs detect shift key with mouse click
- [mouse-hide-while-typing](config/mouse-hide-while-typing.en.md) - Hide mouse cursor immediately when typing
- [mouse-scroll-multiplier](config/mouse-scroll-multiplier.en.md) - Multiplier for scrolling distance with mouse wheel
- [vt-kam-allowed](config/vt-kam-allowed.en.md) - Allow KAM mode to disable keyboard input from applications
- [right-click-action](config/right-click-action.en.md) - Action to perform when right-clicking on terminal surface
- [focus-follows-mouse](config/focus-follows-mouse.en.md) - Select pane under mouse cursor in split view
- [click-repeat-interval](config/click-repeat-interval.en.md) - Time in milliseconds between clicks for repeat detection

### Quick Terminal
- [quick-terminal-position](config/quick-terminal-position.en.md) - Position of the quick terminal window
- [quick-terminal-autohide](config/quick-terminal-autohide.en.md) - Automatically hide quick terminal when focus shifts
- [quick-terminal-keyboard-interactivity](config/quick-terminal-keyboard-interactivity.en.md) - Keyboard interactivity mode for the quick terminal
- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.en.md) - Duration of quick terminal animation
- [quick-terminal-screen](config/quick-terminal-screen.en.md) - Screen where quick terminal appears
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.en.md) - Quick terminal behavior when switching spaces

### Text Rendering
- [adjust-font-baseline](config/adjust-font-baseline.en.md) - Adjust text baseline distance from cell bottom
- [adjust-cell-width](config/adjust-cell-width.en.md) - Adjust cell width for character alignment
- [adjust-cell-height](config/adjust-cell-height.en.md) - Adjust cell height for character alignment
- [adjust-box-thickness](config/adjust-box-thickness.en.md) - Adjust the thickness of box drawing characters
- [adjust-icon-height](config/adjust-icon-height.en.md) - Adjust nerd font icon height
- [adjust-underline-position](config/adjust-underline-position.en.md) - Adjust the vertical position of underline
- [adjust-underline-thickness](config/adjust-underline-thickness.en.md) - Adjust underline thickness in pixels
- [adjust-strikethrough-position](config/adjust-strikethrough-position.en.md) - Adjust strikethrough position from the top of the cell
- [adjust-strikethrough-thickness](config/adjust-strikethrough-thickness.en.md) - Adjust strikethrough thickness in pixels or percentage
- [adjust-overline-position](config/adjust-overline-position.en.md) - Adjust the vertical position of overline text
- [adjust-overline-thickness](config/adjust-overline-thickness.en.md) - Adjust the thickness of overline text
- [grapheme-width-method](config/grapheme-width-method.en.md) - Method for calculating grapheme cluster cell width

### Resize Overlay
- [resize-overlay](config/resize-overlay.en.md) - When to show resize overlays during terminal resizing
- [resize-overlay-position](config/resize-overlay-position.en.md) - Position of the window resize overlay
- [resize-overlay-duration](config/resize-overlay-duration.en.md) - Duration of resize overlay display

### Links & URLs
- [link-url](config/link-url.en.md) - Enable URL detection and opening
- [link-previews](config/link-previews.en.md) - Show preview tooltips for matched URLs

### Bell & Notifications
- [bell-features](config/bell-features.en.md) - Configure bell notification features
- [desktop-notifications](config/desktop-notifications.en.md) - Allow terminal applications to show desktop notifications

### Configuration
- [config-file](config/config-file.en.md) - Load additional configuration files for Ghostty
- [config-default-files](config/config-default-files.en.md) - Load default configuration file paths on startup

### macOS
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

### Terminal Behavior
- [title-report](config/title-report.en.md) - Enable or disable title reporting escape sequence
- [osc-color-report-format](config/osc-color-report-format.en.md) - Set color reporting format for OSC sequences
- [enquiry-response](config/enquiry-response.en.md) - String to send when ENQ control character is received
- [image-storage-limit](config/image-storage-limit.en.md) - Maximum bytes for image data per terminal screen
- [confirm-close-surface](config/confirm-close-surface.en.md) - Confirm before closing a surface
- [quit-after-last-window-closed](config/quit-after-last-window-closed.en.md) - Quit Ghostty when the last window is closed
- [window-inherit-working-directory](config/window-inherit-working-directory.en.md) - Inherit working directory from previously focused window
- [window-inherit-font-size](config/window-inherit-font-size.en.md) - Inherit font size from previously focused window
- [initial-window](config/initial-window.en.md) - Whether to create an initial window on startup

### Custom Shaders
- [custom-shader](config/custom-shader.en.md) - Path to custom GLSL shader files
- [custom-shader-animation](config/custom-shader-animation.en.md) - Run animation loop for custom shaders

### Command Palette
- [command-palette-entry](config/command-palette-entry.en.md) - Custom entries for the command palette

## Actions

### Clipboard
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - Copy the currently selected text to clipboard
- [paste_from_clipboard](actions/paste_from_clipboard.en.md) - Paste contents of the default clipboard
- [paste_from_selection](actions/paste_from_selection.en.md) - Paste the contents of the selection clipboard
- [copy_url_to_clipboard](actions/copy_url_to_clipboard.en.md) - Copy URL under cursor to clipboard
- [copy_title_to_clipboard](actions/copy_title_to_clipboard.en.md) - Copy the terminal title to the clipboard

### Font Size
- [increase_font_size](actions/increase_font_size.en.md) - Increase the font size by a specified amount
- [decrease_font_size](actions/decrease_font_size.en.md) - Decrease font size by specified points
- [reset_font_size](actions/reset_font_size.en.md) - Reset font size to the original configured size
- [set_font_size](actions/set_font_size.en.md) - Set the font size to a specific point size

### Scrolling
- [scroll_to_top](actions/scroll_to_top.en.md) - Scroll to the top of the screen
- [scroll_to_bottom](actions/scroll_to_bottom.en.md) - Scroll to bottom of screen
- [scroll_page_up](actions/scroll_page_up.en.md) - Scroll the screen up by one page
- [scroll_page_down](actions/scroll_page_down.en.md) - Scroll the screen down by one page
- [scroll_page_lines](actions/scroll_page_lines.en.md) - Scroll by specified amount of lines
- [scroll_page_fractional](actions/scroll_page_fractional.en.md) - Scroll by specified fraction of page
- [scroll_to_selection](actions/scroll_to_selection.en.md) - Scroll to the selected text
- [jump_to_prompt](actions/jump_to_prompt.en.md) - Jump viewport forward or backward by number of prompts

### Tab Management
- [new_tab](actions/new_tab.en.md) - Open a new tab
- [close_tab](actions/close_tab.en.md) - Close current tab or all other tabs
- [next_tab](actions/next_tab.en.md) - Navigate to next tab
- [previous_tab](actions/previous_tab.en.md) - Navigate to the previous tab
- [goto_tab](actions/goto_tab.en.md) - Navigate to a specific tab by index number
- [last_tab](actions/last_tab.en.md) - Go to the last tab
- [move_tab](actions/move_tab.en.md) - Move a tab by a relative offset

### Window Management
- [new_window](actions/new_window.en.md) - Open a new window
- [close_window](actions/close_window.en.md) - Close the current window and all its tabs and splits
- [close_all_windows](actions/close_all_windows.en.md) - Close all windows (deprecated, no longer effective)
- [toggle_fullscreen](actions/toggle_fullscreen.en.md) - Fullscreen or unfullscreen the current window
- [toggle_visibility](actions/toggle_visibility.en.md) - Show or hide all windows
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.en.md) - Toggle window to always float on top of others
- [reset_window_size](actions/reset_window_size.en.md) - Reset the window to the default size

### Split Management
- [new_split](actions/new_split.en.md) - Create a new split in the specified direction
- [close_surface](actions/close_surface.en.md) - Close the current window, tab, or split
- [goto_split](actions/goto_split.en.md) - Focus on a split in the specified direction
- [resize_split](actions/resize_split.en.md) - Resize current split in specified direction and amount
- [equalize_splits](actions/equalize_splits.en.md) - Equalize the size of all splits in the current window
- [toggle_split_zoom](actions/toggle_split_zoom.en.md) - Zoom in or out of current split pane

### Selection
- [adjust_selection](actions/adjust_selection.en.md) - Adjust current selection in the given direction
- [select_all](actions/select_all.en.md) - Select all text on the screen

### Terminal Control
- [reset](actions/reset.en.md) - Reset the terminal to initial state
- [clear_screen](actions/clear_screen.en.md) - Clear the screen and all scrollback history
- [write_screen_file](actions/write_screen_file.en.md) - Write screen contents to a temporary file
- [write_scrollback_file](actions/write_scrollback_file.en.md) - Write the terminal scrollback to a file
- [write_selection_file](actions/write_selection_file.en.md) - Write selected text to a temporary file with specified action

### Configuration
- [open_config](actions/open_config.en.md) - Open configuration file in default editor
- [reload_config](actions/reload_config.en.md) - Reload the configuration

### Input Sequences
- [text](actions/text.en.md) - Send specified text string
- [esc](actions/esc.en.md) - Send an ESC sequence
- [csi](actions/csi.en.md) - Send CSI sequence to terminal
- [cursor_key](actions/cursor_key.en.md) - Send cursor key data based on cursor key mode state
- [ignore](actions/ignore.en.md) - Ignore this key combination
- [unbind](actions/unbind.en.md) - Unbind a previously bound key binding

### Quick Terminal
- [toggle_quick_terminal](actions/toggle_quick_terminal.en.md) - Toggle the quick terminal window

### Command Palette
- [toggle_command_palette](actions/toggle_command_palette.en.md) - Toggle the command palette

### Undo & Redo
- [undo](actions/undo.en.md) - Undo the last undoable action for the focused surface
- [redo](actions/redo.en.md) - Redo last undoable action

### Application
- [quit](actions/quit.en.md) - Quit Ghostty application
- [check_for_updates](actions/check_for_updates.en.md) - Check for available Ghostty updates
- [toggle_secure_input](actions/toggle_secure_input.en.md) - Toggle secure input mode to prevent keyboard monitoring

### Inspector & Debug
- [inspector](actions/inspector.en.md) - Control visibility of the terminal inspector
- [crash](actions/crash.en.md) - Crash Ghostty in desired thread for testing
