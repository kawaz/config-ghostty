# cursor_key

**Language:** English | [日本語](../../ja/actions/cursor_key.ja.md)

## Description

Send data to the pty depending on whether cursor key mode is enabled (`application`) or disabled (`normal`).

## Usage

This action requires a mode argument:

```conf
# https://ghostty.org/docs/config/reference#cursor_key
# Send cursor key data
keybind up = cursor_key:application,up
keybind down = cursor_key:application,down
```
