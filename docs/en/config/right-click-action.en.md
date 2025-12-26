# right-click-action

**Language:** English | [日本語](../../ja/config/right-click-action.ja.md)

## Description

The action to take when the user right-clicks on the terminal surface.

Valid values:
- `context-menu` - Show the context menu.
- `paste` - Paste the contents of the clipboard.
- `copy` - Copy the selected text to the clipboard.
- `copy-or-paste` - If there is a selection, copy the selected text to the clipboard; otherwise, paste the contents of the clipboard.
- `ignore` - Do nothing, ignore the right-click.

The default value is `context-menu`.

## Default

```conf
# https://ghostty.org/docs/config/reference#right-click-action
# Action on right-click (default: context-menu)
right-click-action = context-menu
```
