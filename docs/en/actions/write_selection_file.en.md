# write_selection_file

**Language:** English | [日本語](../../ja/actions/write_selection_file.ja.md)

## Description

Write the currently selected text into a temporary file with the specified action.

See `write_scrollback_file` for possible actions.

Does nothing when no text is selected.

## Usage

This action requires an action argument:

```conf
# https://ghostty.org/docs/config/reference#write_selection_file
# Write selection to file
keybind alt+shift+s = write_selection_file:open
```

## Related

- [`write_scrollback_file`](write_scrollback_file.en.md)
