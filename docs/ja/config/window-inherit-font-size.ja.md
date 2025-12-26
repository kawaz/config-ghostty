---
description: 以前フォーカスされたウィンドウからフォントサイズを継承
platform: all
default: true
---

# window-inherit-font-size

**Language:** [English](../../en/config/window-inherit-font-size.en.md) | 日本語

## 説明

true の場合、新しいウィンドウとタブは以前フォーカスされていたウィンドウのフォントサイズを継承します。以前にフォーカスされたウィンドウがない場合、デフォルトフォントサイズが使用されます。false の場合、設定 [`font-size`](font-size.ja.md) で指定されたデフォルトフォントサイズが使用されます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-inherit-font-size.ja.md
# 以前フォーカスされたウィンドウからフォントサイズを継承 (default: true)
window-inherit-font-size = true
```

## 関連

- [font-size](font-size.ja.md)
- [window-inherit-working-directory](window-inherit-working-directory.ja.md)
