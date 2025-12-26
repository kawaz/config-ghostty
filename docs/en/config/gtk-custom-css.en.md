---
description: Load custom CSS files for GTK styling
platform: linux
default:
---

# gtk-custom-css

**Language:** English | [日本語](../../ja/config/gtk-custom-css.ja.md)

## Description

Custom CSS files to be loaded.

GTK CSS documentation can be found at the following links:

- https://docs.gtk.org/gtk4/css-overview.html - An overview of GTK CSS.
- https://docs.gtk.org/gtk4/css-properties.html - A comprehensive list of supported CSS properties.

Launch Ghostty with `env GTK_DEBUG=interactive ghostty` to tweak Ghostty's CSS in real time using the GTK Inspector. Errors in your CSS files would also be reported in the terminal you started Ghostty from. See https://developer.gnome.org/documentation/tools/inspector.html for more information about the GTK Inspector.

This configuration can be repeated multiple times to load multiple files. Prepend a ? character to the file path to suppress errors if the file does not exist. If you want to include a file that begins with a literal ? character, surround the file path in double quotes (").

The file size limit for a single stylesheet is 5MiB.

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-custom-css
# Load custom CSS files for GTK styling (default: )
gtk-custom-css =
```
