---
description: 通常のテキストのフォントスタイル
platform: all
default: default
---

# font-style

**Language:** [English](../../en/config/font-style.en.md) | 日本語

## 説明

要求された各ターミナルフォントスタイルに使用する名前付きフォントスタイル。これは、フォント自体がアドバタイズするフォントスタイル文字列に基づいてスタイルを検索します。例えば、"Iosevka Heavy" のスタイルは "Heavy" です。

これらのフィールドを使用してフォントスタイルを完全に無効にすることもできます。下記の設定の値をリテラル `false` に設定すると、そのフォントスタイルは無効になります。ターミナル内で実行中のプログラムが無効なフォントスタイルをリクエストする場合、通常のフォントスタイルが代わりに使用されます。

これらは対応する font-family も指定されている場合にのみ有効です。font-family が指定されていない場合、フォントスタイルは、フォントスタイルを無効にしていない限り無視されます。

## 関連設定

- [font-style-bold](font-style-bold.ja.md)
- [font-style-italic](font-style-italic.ja.md)
- [font-style-bold-italic](font-style-bold-italic.ja.md)

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-style.ja.md
# 通常のテキストのフォントスタイル (default: default)
font-style = default
```
