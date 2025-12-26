---
description: フォーカスされていないスプリットをディムする色
platform: all
default: ""
---

# unfocused-split-fill

**言語:** [English](../../en/config/unfocused-split-fill.en.md) | 日本語

## 説明

フォーカスされていないスプリットをディムする色を設定します。フォーカスされていないスプリットは、スプリット上に半透明の矩形をレンダリングすることでディムされます。これはその矩形の色を設定し、ディムニング効果を慎重に制御するために使用できます。

デフォルトは背景色になります。

16 進数（`#RRGGBB` または `RRGGBB`）または名前付き X11 色として指定します。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#unfocused-split-fill
# フォーカスされていないスプリットをディムする色 (default: background color)
unfocused-split-fill =
```
