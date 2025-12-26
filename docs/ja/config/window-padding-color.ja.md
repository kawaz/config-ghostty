---
description: ウィンドウのパディング領域の色
platform: all
default: background
---

# window-padding-color

**言語:** [English](../../en/config/window-padding-color.en.md) | 日本語

## 説明

ウィンドウのパディング領域の色。有効な値：

* `background` - [`background`](background.ja.md) で指定された背景色。
* `extend` - 最も近いグリッドセルの背景色を拡張。
* `extend-always` - 「extend」と同じだが、以下に記載されている拡張を無効にするヒューリスティックを適用せずに常に拡張する。

「extend」値は特定のシナリオでは無効になります。プライマリスクリーンアプリケーション (例：Neovim ではない) では、以下のいずれかが true の場合、色は垂直方向に拡張されない：

* 最も近い行に、デフォルト背景色を持つセルがある。この場合、デフォルト背景色がパディング色として見栄えが良いという考え。
* 最も近い行がプロンプト行である (シェル統合が必要)。プロンプトはしばしば拡張されたときに見栄えの良くないパワーラインアイコンを含むという考え。
* 最も近い行に完全にフィットするパワーラインキャラクターを含む。これらは拡張されたときに見栄えが良くない。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#window-padding-color
# ウィンドウのパディング領域の色 (デフォルト: background)
window-padding-color = background
```

## 関連設定

- [`window-padding-x`](window-padding-x.ja.md)
- [`window-padding-y`](window-padding-y.ja.md)
- [`window-padding-balance`](window-padding-balance.ja.md)
