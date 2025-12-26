---
description: ウィンドウをセルサイズの離散インクリメント単位でサイズ変更
platform: macos
default: false
---

# window-step-resize

**言語:** [English](../../en/config/window-step-resize.en.md) | 日本語

## 説明

ウィンドウをフォーカスされたサーフェスのセルサイズの離散インクリメント単位でサイズ変更します。これが無効な場合、サーフェスはピクセルインクリメント単位でサイズ変更されます。現在のところ macOS でのみサポートされています。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#window-step-resize
# ウィンドウをセルサイズの離散インクリメント単位でサイズ変更 (default: false)
window-step-resize = false
```

## 関連設定

- [`window-padding-y`](window-padding-y.ja.md)
- [`window-padding-x`](window-padding-x.ja.md)
- [`resize_split`](../actions/resize_split.ja.md)
