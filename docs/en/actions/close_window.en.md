# close_window

**Language:** English | [日本語](../../ja/actions/close_window.ja.md)

## Description

Close the current window and all tabs and splits therein.

This might trigger a close confirmation popup, depending on the value of the `confirm-close-surface` configuration setting.

## Usage

This action is invoked without arguments:

```conf
# https://ghostty.org/docs/config/reference#close_window
# Close the current window
keybind super+w = close_window
```
