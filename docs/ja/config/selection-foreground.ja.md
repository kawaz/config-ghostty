---
description: テキスト選択の前景色
platform: all
default: （反転した背景/前景）
---

# selection-foreground

**Language:** [English](../../en/config/selection-foreground.en.md) | 日本語

## 説明

テキスト選択の前景色。設定されていない場合、選択色は単なる反転したウィンドウの背景と前景です（注意: セル bg/fg と混同しないでください）。

16 進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定されます。バージョン 1.2.0 以降、セル前景色に一致するように `cell-foreground` に設定することもできます。またはセル背景色に一致するように `cell-background` に設定することもできます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/selection-foreground.ja.md
# テキスト選択の前景色 (default: inverted background/foreground)
selection-foreground =
```

## 関連

- [selection-background](selection-background.ja.md)
- [background](background.ja.md)
- [foreground](foreground.ja.md)
