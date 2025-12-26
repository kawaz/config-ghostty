---
description: 4 つのウィンドウエッジ全体に余分なパディングを均衡
platform: all
default: false
---

# window-padding-balance

**言語:** [English](../../en/config/window-padding-balance.en.md) | 日本語

## 説明

ビューポートの寸法は通常、セルサイズで完全に割り切れません。その場合、列の最後と最後の行の下に余分なパディングが存在する可能性があります。これが `true` の場合、この余分なパディングは自動的に 4 つのエッジすべての間に均衡を取り、一方の側の不均衡を最小化します。これが `false` の場合、左上のグリッドセルは常にエッジにぴったりと張り付き、他の `window-padding` オプションで指定されているもの以外のパディングはゼロになります。

他の `window-padding` フィールドが設定されていて、これが `true` の場合、これが引き続き適用されます。他のパディングが最初に適用され、実際に存在するグリッドセル数に影響を与える可能性があり、これが最後に適用されて、特定のビューポートサイズとグリッドセルサイズが与えられたパディングのバランスを取ります。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#window-padding-balance
# 4 つのウィンドウエッジ全体に余分なパディングを均衡 (default: false)
window-padding-balance = false
```

## 関連設定

- [`window-padding-x`](window-padding-x.ja.md)
- [`window-padding-y`](window-padding-y.ja.md)
- [`window-padding-color`](window-padding-color.ja.md)
