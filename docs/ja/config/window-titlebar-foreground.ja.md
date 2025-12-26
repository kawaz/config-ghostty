---
description: ウィンドウタイトルバーの前景色
platform: linux
default: （なし）
---

# window-titlebar-foreground

**Language:** [English](../../en/config/window-titlebar-foreground.en.md) | 日本語

## 説明

ウィンドウタイトルバーの前景色。このオプションは [`window-theme`](window-theme.ja.md) が ghostty に設定されている場合にのみ有効になります。現在のところ GTK アプリランタイムでのみサポートされています。

16 進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定されます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-titlebar-foreground.ja.md
# ウィンドウタイトルバーの前景色 (default: none)
window-titlebar-foreground =
```

## 関連

- [window-theme](window-theme.ja.md)
- [window-titlebar-background](window-titlebar-background.ja.md)
