---
description: ベル オーディオのボリューム レベル
platform: linux
default: "0.5"
---

# bell-audio-volume

**Language:** [English](../../en/config/bell-audio-volume.en.md) | 日本語

## Description

`audio` がベル機能として有効な場合、これはオーディオ ファイルを再生するボリューム (システム ボリュームに対する相対値) です。これは 0.0 (無音) から 1.0 (可能な限り大きい) までの範囲の浮動小数点数です。デフォルトは 0.5 です。(GTK のみ)

利用可能: 1.2.0 以降

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/bell-audio-volume.ja.md
# ベル オーディオのボリューム レベル (default: 0.5)
bell-audio-volume = 0.5
```
