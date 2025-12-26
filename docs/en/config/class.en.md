---
description: Application class for WM_CLASS and DBus connection
platform: linux
default: com.mitchellh.ghostty
---

# class

**Language:** English | [日本語](../../ja/config/class.ja.md)

## Description

The setting that will change the application class value.

This controls the class field of the `WM_CLASS` X11 property (when running under X11), the Wayland application ID (when running under Wayland), and the bus name that Ghostty uses to connect to DBus.

Note that changing this value between invocations will create new, separate instances of Ghostty when running with `gtk-single-instance=true`. See that option for more details.

Changing this value may break launching Ghostty from `.desktop` files, via DBus activation, or systemd user services as the system is expecting Ghostty to connect to DBus using the default `class` when it is launched.

The class name must follow the requirements defined [in the GTK documentation](https://docs.gtk.org/gio/type_func.Application.id_is_valid.html).

## Default

```conf
# https://ghostty.org/docs/config/reference#class
# Application class for WM_CLASS and DBus connection (default: com.mitchellh.ghostty)
class =
```

## Related

- [`gtk-single-instance`](gtk-single-instance.en.md)
