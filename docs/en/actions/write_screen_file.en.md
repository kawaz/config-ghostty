---
description: Write screen contents to a temporary file
platform: all
default: ""
---

# write_screen_file

**Language:** English | [日本語](../../ja/actions/write_screen_file.ja.md)

## Description

Write the contents of the screen into a temporary file with the specified action.

See `write_scrollback_file` for possible actions.

## Usage

```conf
write_screen_file:{action}
```

Common actions:
- `copy` - Copy the path to the clipboard
- `open` - Open the file with the default application
- `paste` - Paste the path into the terminal
