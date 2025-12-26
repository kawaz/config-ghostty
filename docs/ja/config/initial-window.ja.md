---
description: スタートアップ時に初期ウィンドウを作成するかどうか
platform: all
default: "true"
---

# initial-window

**Language:** [English](../../en/config/initial-window.en.md) | 日本語

## Description

これは、Ghostty 実行時に初期ウィンドウを作成するかどうかを制御します。`quit-after-last-window-closed` が `true` で `quit-after-last-window-closed-delay` が設定されている場合、`initial-window` を `false` に設定すると、ウィンドウが作成されない場合、Ghostty は設定された遅延の後に終了することを意味することに注意してください。Linux と macOS でのみ実装されています。

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/initial-window.ja.md
# スタートアップ時に初期ウィンドウを作成するかどうか (default: true)
initial-window = true
```
