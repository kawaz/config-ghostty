---
description: 前景色と背景色の最小コントラスト比
platform: all
default: "1"
---

# minimum-contrast

**言語:** [English](../../en/config/minimum-contrast.en.md) | 日本語

## 説明

前景色と背景色の最小コントラスト比を設定します。コントラスト比は 1 から 21 の間の値です。1 の値はコントラストなし（例：黒の上の黒）を意味します。この値は [WCAG 2.0 仕様](https://www.w3.org/TR/WCAG20/) で定義されたコントラスト比です。

見えないテキスト（背景と同じ色）を避けたい場合、1.1 の値が良い選択肢です。読みにくいテキストを避けたい場合、3 以上の値が良い選択肢です。値が高いほど、テキストが黒または白になる可能性が高くなります。

この値は絵文字または画像には適用されません。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#minimum-contrast
# 前景色と背景色の最小コントラスト比 (default: 1)
minimum-contrast = 1
```
