---
description: 太字イタリックテキスト用のフォントスタイル
platform: all
default: default
---

# font-style-bold-italic

**言語:** [English](../../en/config/font-style-bold-italic.en.md) | 日本語

## 説明

太字イタリックテキストに使用する名前付きフォントスタイルを指定します。このフォント自体が提供するフォントスタイル文字列に基づいてスタイルを検索します。例えば、「Iosevka Heavy」のスタイルは「Heavy」です。

また、このフィールドを使用してフォントスタイルを完全に無効にできます。値を文字通り `false` に設定すると、その太字イタリックフォントスタイルは無効になります。ターミナルで実行中のプログラムが太字イタリックテキストをリクエストすると、代わりに通常のフォントスタイルが使用されます。

これは対応する [`font-family-bold-italic`](font-family-bold-italic.ja.md) も指定されている場合のみ有効です。font-family-bold-italic が指定されていない場合、font-style-bold-italic は無視されます。ただしフォントスタイルを無効化する場合を除きます。

## デフォルト値

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-style-bold-italic.ja.md
# 太字イタリックテキスト用のフォントスタイル (デフォルト: default)
font-style-bold-italic = default
```

## 関連設定

- [`font-style`](font-style.ja.md)
- [`font-style-bold`](font-style-bold.ja.md)
- [`font-style-italic`](font-style-italic.ja.md)
- [`font-family-bold-italic`](font-family-bold-italic.ja.md)
