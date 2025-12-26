---
description: OSC シーケンスのカラー報告形式を設定する
platform: all
default: 16-bit
---

# osc-color-report-format

**言語:** [English](../../en/config/osc-color-report-format.en.md) | 日本語

## 説明

OSC シーケンス内でのカラー情報リクエストの報告形式を設定します。Ghostty は現在、OSC 10 （フォアグラウンド）、OSC 11 （バックグラウンド）、OSC 4 （256 色パレット）のクエリをサポートしており、デフォルトでは報告される値はスケールアップされた RGB 値で、各コンポーネントは 16 ビットです。これは、ほとんどのターミナルがこれらの値を報告する方法です。ただし、一部のレガシー アプリケーションでは、8 ビットの スケーリングなしのコンポーネントが必要な場合があります。また、報告を完全にオフにすることもサポートしています。コンポーネントは小文字の 16 進値です。

許可される値は以下の通りです：

- `none` - OSC 4/10/11 クエリは返信されません

- `8-bit` - カラー コンポーネントはスケーリングなしで返されます（例：`rr/gg/bb`）

- `16-bit` - カラー コンポーネントはスケーリングされて返されます（例：`rrrr/gggg/bbbb`）

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/osc-color-report-format.ja.md
# OSC シーケンスのカラー報告形式を設定する (default: 16-bit)
osc-color-report-format = 16-bit
```
