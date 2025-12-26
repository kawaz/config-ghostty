---
description: ベル通知用のオーディオ ファイルへのパス
platform: linux
default:
---

# bell-audio-path

**Language:** [English](../../en/config/bell-audio-path.en.md) | 日本語

## Description

`audio` がベル機能として有効な場合、これはオーディオ ファイルへのパスです。パスが絶対パスでない場合、参照される設定ファイルのディレクトリへの相対パスと見なされます。または、CLI フラグとして使用される場合は現在のワーキング ディレクトリからです。パスは `~/` でプレフィックスされ、ユーザーのホーム ディレクトリを参照できます。(GTK のみ)

利用可能: 1.2.0 以降

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/bell-audio-path.ja.md
# ベル通知用のオーディオ ファイルへのパス (default: )
bell-audio-path =
```
