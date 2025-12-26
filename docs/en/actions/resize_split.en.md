# resize_split

**Language:** English | [日本語](../../ja/actions/resize_split.ja.md)

## Description

Resize the current split in the specified direction and amount in pixels. The two arguments should be joined with a comma (`,`), like in `resize_split:up,10`.

## Usage

This action requires direction and amount arguments:

```conf
# https://ghostty.org/docs/config/reference#resize_split
# Resize current split
keybind alt+up = resize_split:up,10
keybind alt+down = resize_split:down,10
keybind alt+left = resize_split:left,10
keybind alt+right = resize_split:right,10
```

## Related

- [`equalize_splits`](equalize_splits.en.md)
- [`new_split`](new_split.en.md)
