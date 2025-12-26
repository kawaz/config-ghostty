# vt-kam-allowed

**Language:** English | [日本語](../../ja/config/vt-kam-allowed.ja.md)

## Description

If true, allows the "KAM" mode (ANSI mode 2) to be used within the terminal. KAM disables keyboard input at the request of the application. This is not a common feature and is not recommended to be enabled. This will not be documented further because if you know you need KAM, you know. If you don't know if you need KAM, you don't need it.

## Default

```conf
# https://ghostty.org/docs/config/reference#vt-kam-allowed
# Allow KAM mode keyboard input control (default: false)
vt-kam-allowed = false
```
