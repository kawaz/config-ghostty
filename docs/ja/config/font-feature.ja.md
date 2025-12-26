---
description: フォント機能設定を適用する
platform: all
default:
---

# font-feature

**言語:** [English](../../en/config/font-feature.en.md) | 日本語

## 説明

フォント機能を適用します。複数のフォント機能を有効化するには、これを複数回繰り返すか、コンマ区切りの機能設定リストを使用できます。

機能設定の構文は以下の通りです。「feat」は機能です：

- 機能を有効化するには、例えば `feat`、`+feat`、`feat on`、`feat=1`。
- 機能を無効化するには、例えば `-feat`、`feat off`、`feat=0`。
- 機能値を設定するには、例えば `feat=2`、`feat = 3`、`feat 4`。
- 機能名は引用符で囲むことができます。これは、この設定が `font-feature-settings` CSS プロパティと構文的に互換性があることを意味します。

構文はかなり緩いですが、無効な設定はサイレント無視されます。

フォント機能は Ghostty でレンダリングされるすべてのフォントに適用されます。今後の拡張により、特定のフェースをターゲットにできるようになります。

プログラミング リガチャーを無効化するには、`-calt` を使用してください。これはプログラミング リガチャーの一般的な機能名です。フォントに含まれるフォント機能とその役割を調べるには、[fontdrop.info](https://fontdrop.info) などのフォント検査ツールを使用してください。

ほとんどのリガチャーを一般的に無効化するには、`-calt, -liga, -dlig` を使用してください。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-feature.ja.md
# フォント機能設定を適用する (default: )
font-feature =
```
