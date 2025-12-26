---
description: ターミナルに CSI シーケンスを送信
platform: all
default: ""
---

# csi

**Language:** [English](../../en/actions/csi.en.md) | 日本語

## 説明

CSI シーケンスを送信します。

値は、CSI ヘッダー（`ESC [` または `\x1b[`）なしの CSI シーケンスである必要があります。

例えば、`csi:0m` を送信して、現在のテキストのすべてのスタイルをリセットできます。

## 使用方法

```
csi:<sequence>
```
