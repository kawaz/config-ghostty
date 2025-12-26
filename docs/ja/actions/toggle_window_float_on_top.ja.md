---
description: ウィンドウを常に他のウィンドウの上に浮かべるかを切り替え
platform: macos
default:
---

# toggle_window_float_on_top

**Language:** [English](../../en/actions/toggle_window_float_on_top.en.md) | 日本語

## Description

ターミナル ウィンドウが、フォーカスされていない場合でも常に他のウィンドウの上に浮かぶようにするかどうかを切り替えます。

ターミナル ウィンドウは常に通常 (フローティングではない) ウィンドウとして開始します。

macOS でのみ実装されています。

## Example

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/toggle_window_float_on_top.ja.md
# ウィンドウを常に他のウィンドウの上に浮かべるかを切り替え
keybind = super+f=toggle_window_float_on_top
```
