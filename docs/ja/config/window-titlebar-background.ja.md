---
description: ウィンドウタイトルバーの背景色
platform: linux
default: （なし）
---

# window-titlebar-background

**Language:** [English](../../en/config/window-titlebar-background.en.md) | 日本語

## 説明

ウィンドウタイトルバーの背景色。このオプションは [`window-theme`](window-theme.ja.md) が ghostty に設定されている場合にのみ有効になります。現在のところ GTK アプリランタイムでのみサポートされています。

16 進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定されます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-titlebar-background.ja.md
# ウィンドウタイトルバーの背景色 (default: none)
window-titlebar-background =
```

## 関連

- [window-theme](window-theme.ja.md)
- [window-titlebar-foreground](window-titlebar-foreground.ja.md)
