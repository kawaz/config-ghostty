---
description: Nerd フォント アイコンの高さを調整する
platform: all
default:
---

# adjust-icon-height

**言語:** [English](../../en/config/adjust-icon-height.en.md) | 日本語

## 説明

Nerd フォント アイコンの最大高さのピクセル数またはパーセンテージの調整。

正の値（負の値）はアイコンの最大高さを増加（減少）させます。これはすべてのアイコンに均等に影響するわけではありません。効果は、アイコンのデフォルト サイズが高さで制限されているかどうかによって異なります。これは、アイコンと主フォントの両方のアスペクト比によって異なります。

Powerline シンボルなど、ボックス描画とターミナル グラフィックス用に設計されている特定のアイコンは、このオプションの影響を受けません。

[`adjust-cell-width`](adjust-cell-width.ja.md) の調整に関する注記を参照してください。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/adjust-icon-height.ja.md
# Nerd フォント アイコンの高さを調整する (default: )
adjust-icon-height =
```

## 関連設定

- [`adjust-cell-width`](adjust-cell-width.ja.md)
- [`adjust-cell-height`](adjust-cell-height.ja.md)
