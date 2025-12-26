---
description: ウィンドウに使用するタイトル
platform: all
default: (empty)
---

# title

**言語:** [English](../../en/config/title.en.md) | 日本語

## 説明

Ghostty がウィンドウに使用するタイトル。これはウィンドウのタイトルをこのタイトルで強制的に常に設定し、Ghostty はプログラム（Neovim など）が送信する可能性のあるタイトル設定エスケープシーケンスを無視します。

空白のタイトルが必要な場合は、値をクォートして、1 つ以上のスペースに設定します。たとえば、`title = " "`。これは実際にはタイトルを非表示にします。これが必要な理由は、空白値を設定すると、タイトルが実行中のプログラムのデフォルト値にリセットされるためです。

この設定は実行時に再度読み込むことができます。設定されている場合、タイトルはすべてのウィンドウで更新されます。設定されていない場合、次のタイトル変更エスケープシーケンスは実行されますが、前の変更はさかのぼって設定されません。後者の場合、Neovim などのプログラムを再起動して新しいタイトルを取得する必要があります。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#title
# ウィンドウに使用するタイトル (default: )
title =
```

## 例

```conf
title = Ghostty
title = " "
```

## 関連設定

- [`title-report`](title-report.ja.md)
- [`window-title-font-family`](window-title-font-family.ja.md)
