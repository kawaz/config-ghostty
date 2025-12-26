---
description: Treat macOS Option key as Alt key
platform: macos
default: ""
---

# macos-option-as-alt

**Language:** English | [日本語](../../ja/config/macos-option-as-alt.ja.md)

## Description

macOS doesn't have a distinct "alt" key and instead has the "option" key which behaves slightly differently. On macOS by default, the option key plus a character will sometimes produce a Unicode character. For example, on US standard layouts option-b produces "∫". This may be undesirable if you want to use "option" as an "alt" key for keybindings in terminal programs or shells.

This configuration lets you change the behavior so that option is treated as alt.

The default behavior (unset) will depend on your active keyboard layout. If your keyboard layout is one of the keyboard layouts listed below, then the default value is "true". Otherwise, the default value is "false". Keyboard layouts with a default value of "true" are:

- U.S. Standard
- U.S. International

Note that if an *Option*-sequence doesn't produce a printable character, it will be treated as *Alt* regardless of this setting. (e.g. `alt+ctrl+a`).

Explicit values that can be set:

If `true`, the *Option* key will be treated as *Alt*. This makes terminal sequences expecting *Alt* to work properly, but will break Unicode input sequences on macOS if you use them via the *Alt* key.

You may set this to `false` to restore the macOS *Alt* key unicode sequences but this will break terminal sequences expecting *Alt* to work.

The values `left` or `right` enable this for the left or right *Option* key, respectively.

## Default

```conf
# https://ghostty.org/docs/config/reference#macos-option-as-alt
# Treat macOS Option key as Alt key (default: "")
macos-option-as-alt =
```
