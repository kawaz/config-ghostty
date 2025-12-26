---
description: 特定の Unicode コードポイントを名前付きフォントにマップする
platform: all
default: （空）
---

# font-codepoint-map

**Language:** [English](../../en/config/font-codepoint-map.en.md) | 日本語

## 説明

1 つまたは複数の Unicode コードポイントを特定の名前付きフォントにマップするよう強制します。これは、特別なシンボルをサポートしたい場合、または特定のグリフを使用したい場合に役立ちます。その場合、特定のフォント用に見栄えが良くレンダリングされます。

構文は `codepoint=fontname` です。ここで `codepoint` は単一のコードポイントまたは範囲です。コードポイントは、`U+ABCD` のような完全な Unicode 16 進値として指定される必要があります。コードポイント範囲は `U+ABCD-U+DEFG` として指定されます。同じフォントの複数の範囲をコンマで区切って指定できます。例えば `U+ABCD-U+DEFG,U+1234-U+5678=fontname`。フォント名は [`font-family`](font-family.ja.md) で使用するのと同じ値です。

この設定は複数回繰り返して、複数のコードポイントマッピングを指定できます。

実行時にこの設定を変更すると、新しいターミナルにのみ影響します。つまり、新しいウィンドウ、タブなどです。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-codepoint-map.ja.md
# 特定の Unicode コードポイントを名前付きフォントにマップ (default: empty)
font-codepoint-map =
```

## 関連

- [font-family](font-family.ja.md)
