---
description: 背景の不透明度レベルを設定する
platform: all
default: 1
---

# background-opacity

**言語:** [English](../../en/config/background-opacity.en.md) | 日本語

## 説明

背景の不透明度（透明度の逆）。値 1 は完全不透明、値 0 は完全透明。0 未満または 1 より大きい値は、最も近い有効な値にクランプされる。

macOS では、ターミナルがネイティブフルスクリーンに入ると、背景の不透明度は無効になる。これは、背景がグレーになり、ウィジェットが表示される可能性があるため（通常は望ましくない）。

macOS では、この設定を変更するには Ghostty 全体を再起動する必要がある。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#background-opacity
# 背景の不透明度レベルを設定する (デフォルト: 1)
background-opacity = 1
```

## 関連設定

- [`background`](background.ja.md)
- [`background-opacity-cells`](background-opacity-cells.ja.md)
- [`background-blur`](background-blur.ja.md)
