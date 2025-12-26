---
description: 文字配置用にセルの幅を調整
platform: all
default: ""
---

# adjust-cell-width

**Language:** [English](../../en/config/adjust-cell-width.en.md) | 日本語

## 説明

すべての設定により、フォントによって決定されるさまざまなメトリックが調整されます。値は整数（1、-1 など）またはパーセンテージ（20%、-15% など）にすることができます。どちらの場合でも、値は元の値を変更する量を表します。

例えば、`1` の値は値を 1 増加させます。リテラル 1 に設定するのではなく、`20%` の値は値を 20% 増加させます。など。

これらの値の検証はほとんどまたはまったくないため、間違った値（例：`-100%`）により、ターミナルが使用不可になる可能性があります。注意して理由を持って使用してください。

一部の値は最小値または最大値で固定されます。これにより、特定の値が無視されているように見える場合があります。例えば、多くの `*-thickness` 調整は 1px 以下にすることはできません。

## 関連設定

- [adjust-cell-height](adjust-cell-height.ja.md)

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/adjust-cell-width.ja.md
# 文字配置用にセルの幅を調整 (default: "")
adjust-cell-width =
```
