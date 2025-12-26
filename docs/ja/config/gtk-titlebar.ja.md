---
description: ウィンドウマネージャータイトルバーの代わりに完全な GTK タイトルバーを表示
platform: linux
default: true
---

# gtk-titlebar

**Language:** [English](../../en/config/gtk-titlebar.en.md) | 日本語

## 説明

有効にした場合、ウィンドウマネージャーの単純なタイトルバーの代わりに、完全な GTK タイトルバーが表示されます。このオプションの動作は、ウィンドウマネージャーによって異なります。

このオプションは、[`window-decoration`](window-decoration.ja.md) が false の場合、または macOS で実行している場合は何もしません。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/gtk-titlebar.ja.md
# 完全な GTK タイトルバーを表示 (default: true)
gtk-titlebar = true
```

## 関連

- [window-decoration](window-decoration.ja.md)
- [gtk-titlebar-style](gtk-titlebar-style.ja.md)
