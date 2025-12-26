---
description: カーソルの下にあるテキストの色
platform: all
default: (empty)
---

# cursor-text

**言語:** [English](../../en/config/cursor-text.en.md) | 日本語

## 説明

カーソルの下にあるテキストの色。これが設定されていない場合、デフォルトが選択されます。

16進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定されます。バージョン 1.2.0 以降、セルの前景色と一致させるために `cell-foreground` に、セルの背景色と一致させるために `cell-background` に設定することもできます。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#cursor-text
# カーソルの下にあるテキストの色 (default: )
cursor-text =
```

## 例

```conf
cursor-text = #ffffff
cursor-text = cell-foreground
cursor-text = cell-background
```

## 関連設定

- [`cursor-color`](cursor-color.ja.md)
- [`foreground`](foreground.ja.md)
- [`background`](background.ja.md)
