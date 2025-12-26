---
description: 入力時に選択をクリア
platform: all
default: true
---

# selection-clear-on-typing

**Language:** [English](../../en/config/selection-clear-on-typing.en.md) | 日本語

## 説明

入力時に選択されたテキストをクリアするかどうか。これはデフォルトで `true` です。これはほとんどのターミナル エミュレーターおよびテキスト入力フィールドの一般的な動作です。これを `false` に設定すると、入力時に選択されたテキストはクリアされません。

"入力" は、具体的には、ターミナル内で実行されているアプリケーション（例：シェル）に送信されるデータを生成する非修飾子（Shift、Control、Alt など）キープレスとして定義されます。さらに、プリエディット状態または合成状態が開始されたとき（例：日本語などの言語を入力する場合）に、選択はクリアされます。

これが `false` の場合、選択は 1 回クリックするか、`escape` を押すことで手動でクリアできます。

利用可能: 1.2.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/selection-clear-on-typing.ja.md
# 入力時に選択をクリア (default: true)
selection-clear-on-typing = true
```
