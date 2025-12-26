---
description: Configure key bindings for terminal actions
platform: all
default:
---

# keybind

**Language:** English | [日本語](../../ja/config/keybind.ja.md)

## Description

Key bindings. The format is `trigger=action`. Duplicate triggers will overwrite previously set values. The list of actions is available in the documentation or using the `ghostty +list-actions` command.

### Trigger

`+`-separated list of keys and modifiers. Example: `ctrl+a`, `ctrl+shift+b`, `up`.

If the key is a single Unicode codepoint, the trigger will match any presses that produce that codepoint. These are impacted by keyboard layouts. For example, `a` will match the `a` key on a QWERTY keyboard, but will match the `q` key on a AZERTY keyboard (assuming US physical layout).

For Unicode codepoints, matching is done by comparing the set of modifiers with the unmodified codepoint. The unmodified codepoint is sometimes called an "unshifted character" in other software, but all modifiers are considered, not only shift. For example, `ctrl+a` will match `a` but not `ctrl+shift+a` (which is `A` on a US keyboard).

Further, codepoint matching is case-insensitive and the unmodified codepoint is always case folded for comparison. As a result, `ctrl+A` configured will match when `ctrl+a` is pressed. Note that this means some key combinations are impossible depending on keyboard layout. For example, `ctrl+_` is impossible on a US keyboard because `_` is `shift+-` and `ctrl+shift+-` is not equal to `ctrl+_` (because the modifiers don't match!). More details on impossible key combinations can be found at this excellent source written by Qt developers: https://doc.qt.io/qt-6/qkeysequence.html#keyboard-layout-issues

Physical key codes can be specified by using any of the key codes as specified by the [W3C specification](https://www.w3.org/TR/uievents-code/). For example, `KeyA` will match the physical `a` key on a US standard keyboard regardless of the keyboard layout. These are case-sensitive.

For aesthetic reasons, the w3c codes also support snake case. For example, `key_a` is equivalent to `KeyA`. The only exceptions are function keys, e.g. `F1` is `f1` (no underscore). This is a consequence of our internal code using snake case but is purposely supported and tested so it is safe to use. It allows an all-lowercase binding which I find more aesthetically pleasing.

Function keys such as `insert`, `up`, `f5`, etc. are also specified using the keys as specified by the previously linked W3C specification.

Physical keys always match with a higher priority than Unicode codepoints, so if you specify both `a` and `KeyA`, the physical key will always be used regardless of what order they are configured.

Valid modifiers are `shift`, `ctrl` (alias: `control`), `alt` (alias: `opt`, `option`), and `super` (alias: `cmd`, `command`). You may use the modifier or the alias. When debugging keybinds, the non-aliased modifier will always be used in output.

Note: The fn or "globe" key on keyboards are not supported as a modifier. This is a limitation of the operating systems and GUI toolkits that Ghostty uses.

Some additional notes for triggers:

- modifiers cannot repeat, `ctrl+ctrl+a` is invalid.
- modifiers and keys can be in any order, `shift+a+ctrl` is *weird*, but valid.
- only a single key input is allowed, `ctrl+a+b` is invalid.

You may also specify multiple triggers separated by `>` to require a sequence of triggers to activate the action. For example, `ctrl+a>n=new_window` will only trigger the `new_window` action if the user presses `ctrl+a` followed separately by `n`. In other software, this is sometimes called a leader key, a key chord, a key table, etc. There is no hardcoded limit on the number of parts in a sequence.

Warning: If you define a sequence as a CLI argument to `ghostty`, you probably have to quote the keybind since `>` is a special character in most shells. Example: ghostty --keybind='ctrl+a>n=new_window'

A trigger sequence has some special handling:

- Ghostty will wait an indefinite amount of time for the next key in the sequence. There is no way to specify a timeout. The only way to force the output of a prefix key is to assign another keybind to specifically output that key (e.g. `ctrl+a>ctrl+a=text:foo`) or press an unbound key which will send both keys to the program.
- If a prefix in a sequence is previously bound, the sequence will override the previous binding. For example, if `ctrl+a` is bound to `new_window` and `ctrl+a>n` is bound to `new_tab`, pressing `ctrl+a` will do nothing.
- Adding to the above, if a previously bound sequence prefix is used in a new, non-sequence binding, the entire previously bound sequence will be unbound. For example, if you bind `ctrl+a>n` and `ctrl+a>t`, and then bind `ctrl+a` directly, both `ctrl+a>n` and `ctrl+a>t` will become unbound.
- Trigger sequences are not allowed for `global:` or `all:`-prefixed triggers. This is a limitation we could remove in the future.

### Action

The action to take when the trigger is satisfied. It takes the format `action` or `action:param`. The latter form is only valid if the action requires a parameter.

- `ignore` - Do nothing, ignore the key input. This can be used to black hole certain inputs to have no effect.
- `unbind` - Remove the binding. This makes it so the previous action is removed, and the key will be sent through to the child command if it is printable. Unbind will remove any matching trigger, including `physical:`-prefixed triggers without specifying the prefix.
- `csi:text` - Send a CSI sequence. e.g. `csi:A` sends "cursor up".
- `esc:text` - Send an escape sequence. e.g. `esc:d` deletes to the end of the word to the right.
- `text:text` - Send a string. Uses Zig string literal syntax. e.g. `text:\x15` sends Ctrl-U.
- All other actions can be found in the documentation or by using the `ghostty +list-actions` command.

Some notes for the action:

- The parameter is taken as-is after the `:`. Double quotes or other mechanisms are included and NOT parsed. If you want to send a string value that includes spaces, wrap the entire trigger/action in double quotes. Example: `--keybind="up=csi:A B"`

There are some additional special values that can be specified for keybind:

- `keybind=clear` will clear all set keybindings. Warning: this removes ALL keybindings up to this point, including the default keybindings.

### Special Prefixes

The keybind trigger can be prefixed with some special values to change the behavior of the keybind. These are:

#### `all:`

Make the keybind apply to all terminal surfaces. By default, keybinds only apply to the focused terminal surface. If this is true, then the keybind will be sent to all terminal surfaces. This only applies to actions that are surface-specific. For actions that are already global (e.g. `quit`), this prefix has no effect.

Available since: 1.0.0

#### `global:`

Make the keybind global. By default, keybinds only work within Ghostty and under the right conditions (application focused, sometimes terminal focused, etc.). If you want a keybind to work globally across your system (e.g. even when Ghostty is not focused), specify this prefix. This prefix implies `all:`.

Note: this does not work in all environments; see the additional notes below for more information.

Available since: 1.0.0 on macOS, 1.2.0 on GTK

#### `unconsumed:`

Do not consume the input. By default, a keybind will consume the input, meaning that the associated encoding (if any) will not be sent to the running program in the terminal. If you wish to send the encoded value to the program, specify the `unconsumed:` prefix before the entire keybind. For example: `unconsumed:ctrl+a=reload_config`. `global:` and `all:`-prefixed keybinds will always consume the input regardless of this setting. Since they are not associated with a specific terminal surface, they're never encoded.

Available since: 1.0.0

#### `performable:`

Only consume the input if the action is able to be performed. For example, the `copy_to_clipboard` action will only consume the input if there is a selection to copy. If there is no selection, Ghostty behaves as if the keybind was not set. This has no effect with `global:` or `all:`-prefixed keybinds. For key sequences, this will reset the sequence if the action is not performable (acting identically to not having a keybind set at all).

Performable keybinds will not appear as menu shortcuts in the application menu. This is because the menu shortcuts force the action to be performed regardless of the state of the terminal. Performable keybinds will still work, they just won't appear as a shortcut label in the menu.

Available since: 1.1.0

Keybind triggers are not unique per prefix combination. For example, `ctrl+a` and `global:ctrl+a` are not two separate keybinds. The keybind set later will overwrite the keybind set earlier. In this case, the `global:` keybind will be used.

Multiple prefixes can be specified. For example, `global:unconsumed:ctrl+a=reload_config` will make the keybind global and not consume the input to reload the config.

Note: `global:` is only supported on macOS and certain Linux platforms.

On macOS, this feature requires accessibility permissions to be granted to Ghostty. When a `global:` keybind is specified and Ghostty is launched or reloaded, Ghostty will attempt to request these permissions. If the permissions are not granted, the keybind will not work. On macOS, you can find these permissions in System Preferences -> Privacy & Security -> Accessibility.

On Linux, you need a desktop environment that implements the [Global Shortcuts](https://flatpak.github.io/xdg-desktop-portal/docs/doc-org.freedesktop.portal.GlobalShortcuts.html) protocol as a part of its XDG desktop protocol implementation. Desktop environments that are known to support (or not support) global shortcuts include:

- Users using KDE Plasma (since [5.27](https://kde.org/announcements/plasma/5/5.27.0/#wayland)) and GNOME (since [48](https://release.gnome.org/48/#and-thats-not-all)) should be able to use global shortcuts with little to no configuration.
- Some manual configuration is required on Hyprland. Consult the steps outlined on the [Hyprland Wiki](https://wiki.hyprland.org/Configuring/Binds/#dbus-global-shortcuts) to set up global shortcuts correctly. (Important: [`xdg-desktop-portal-hyprland`](https://wiki.hyprland.org/Hypr-Ecosystem/xdg-desktop-portal-hyprland/) must also be installed!)
- Notably, global shortcuts have not been implemented on wlroots-based compositors like Sway (see [upstream issue](https://github.com/emersion/xdg-desktop-portal-wlr/issues/240)).

## Default

```conf
# https://ghostty.org/docs/config/reference#keybind
# Configure key bindings for terminal actions (default: as shown in documentation)
keybind = super+shift+d=new_split:down
keybind = super+enter=toggle_fullscreen
```

See the official documentation for the full list of default keybindings.
