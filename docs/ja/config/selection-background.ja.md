---
description: テキスト選択の背景色
platform: all
default: （反転した背景/前景）
---

# selection-background

**Language:** [English](../../en/config/selection-background.en.md) | 日本語

## 説明

テキスト選択の背景色。設定されていない場合、選択色は単なる反転したウィンドウの背景と前景です（注意: セル bg/fg と混同しないでください）。

16 進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定されます。バージョン 1.2.0 以降、セル背景色に一致するように `cell-background` に設定することもできます。またはセル前景色に一致するように `cell-foreground` に設定することもできます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/selection-background.ja.md
# テキスト選択の背景色 (default: inverted background/foreground)
selection-background =
```

## 関連

- [selection-foreground](selection-foreground.ja.md)
- [background](background.ja.md)
- [foreground](foreground.ja.md)
