---
description: Custom entries for the command palette
platform: all
default: ""
---

# command-palette-entry

**Language:** English | [日本語](../../ja/config/command-palette-entry.ja.md)

## Description

Custom entries into the command palette.

Each entry requires the title, the corresponding action, and an optional description. Each field should be prefixed with the field name, a colon (`:`), and then the specified value. The syntax for actions is identical to the one for keybind actions. Whitespace in between fields is ignored.

If you need to embed commas or any other special characters in the values, enclose the value in double quotes and it will be interpreted as a Zig string literal. This is also useful for including whitespace at the beginning or the end of a value. See the [Zig documentation](https://ziglang.org/documentation/master/#Escape-Sequences) for more information on string literals. Note that multiline string literals are not supported.

Double quotes can not be used around the field names.

```ini
command-palette-entry = title:Reset Font Style, action:csi:0m
command-palette-entry = title:Crash on Main Thread,description:Causes a crash on the main (UI) thread.,action:crash:main
command-palette-entry = title:Focus Split: Right,description:"Focus the split to the right, if it exists.",action:goto_split:right
command-palette-entry = title:"Ghostty",description:"Add a little Ghostty to your terminal.",action:"text:\xf0\x9f\x91\xbb"
```

By default, the command palette is preloaded with most actions that might be useful in an interactive setting yet do not have easily accessible or memorizable shortcuts. The default entries can be cleared by setting this setting to an empty value:

```ini
command-palette-entry =
```

Available since: 1.2.0
