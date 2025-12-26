---
description: 太字イタリックテキスト用のフォントバリエーション軸を設定する
platform: all
default: (なし)
---

# font-variation-bold-italic

**言語:** [English](../../en/config/font-variation-bold-italic.en.md) | 日本語

## 説明

変数フォント内の太字イタリックテキスト用に 1 つ以上のフォントバリエーション値を設定するための反復可能な設定。変数フォントは、単一フォント (通常は `-VF.ttf` または `-VF.otf` で終わるファイル名) で、重量、傾斜などのようなコンフィギュラブルなアクスが 1 つ以上含まれている。すべてのフォントがバリエーションをサポートしているわけではない。明示的に変数フォントとして述べているフォントのみが動作する。

形式は `id=value` で、`id` はアクス識別子。アクス識別子は常に 4 文字の文字列 (例：`wght`)。サポートされているアクスのリストを取得するには、フォントドキュメントを参照するか、フォント検査ツールを使用する。

無効な id と値は通常無視される。例えば、フォントが 100 から 700 の重量のみをサポートしている場合、`wght=800` を設定してもそれ以上のことはない (700 にクランプされない)。フォントのドキュメントを確認してサポートされている値を確認する必要がある。

一般的なアクス：`wght` (重量)、`slnt` (傾斜)、`ital` (イタリック)、`opsz` (光学サイズ)、`wdth` (幅)、`GRAD` (グラデーション) など。

## 使用例

```conf
font-variation-bold-italic = wght=800,slnt=12
```

## 関連設定

- [`font-variation`](font-variation.ja.md)
- [`font-variation-bold`](font-variation-bold.ja.md)
- [`font-variation-italic`](font-variation-italic.ja.md)
