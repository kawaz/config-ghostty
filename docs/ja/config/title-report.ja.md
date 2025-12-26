# title-report

**言語:** [English](../../en/config/title-report.en.md) | 日本語

## 説明

タイトルレポート（CSI 21 t）を有効または無効にします。このエスケープシーケンスにより、実行中のプログラムはターミナルのタイトルをクエリできます。これは一般的なセキュリティ上の問題であり、デフォルトでは無効になっています。

警告: これは最高の場合は機密情報を露出させ、最悪の場合は任意のコード実行を有効にする可能性があります（悪意のあるタイトルと軽微なユーザー操作を伴う）。

利用可能: 1.0.1 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/title-report.ja.md
# タイトルレポートエスケープシーケンスを有効にする (default: false)
title-report = false
```
