---
description: Title to use for the window
platform: all
default: (empty)
---

# title

**Language:** English | [日本語](../../ja/config/title.ja.md)

## Description

The title Ghostty will use for the window. This will force the title of the window to be this title at all times and Ghostty will ignore any set title escape sequences programs (such as Neovim) may send.

If you want a blank title, set this to one or more spaces by quoting the value. For example, `title = " "`. This effectively hides the title. This is necessary because setting a blank value resets the title to the default value of the running program.

This configuration can be reloaded at runtime. If it is set, the title will update for all windows. If it is unset, the next title change escape sequence will be honored but previous changes will not retroactively be set. This latter case may require you to restart programs such as Neovim to get the new title.

## Default

```conf
# https://ghostty.org/docs/config/reference#title
# Title to use for the window (default: )
title =
```

## Example

```conf
title = Ghostty
title = " "
```

## Related

- [`title-report`](title-report.en.md)
- [`window-title-font-family`](window-title-font-family.en.md)
