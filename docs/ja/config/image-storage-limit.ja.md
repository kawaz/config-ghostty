---
description: ターミナル スクリーンあたりのイメージ データの最大バイト数
platform: all
default: 320000000
---

# image-storage-limit

**言語:** [English](../../en/config/image-storage-limit.en.md) | 日本語

## 説明

ターミナル スクリーンあたりのイメージ データ（例：Kitty イメージ プロトコル）に使用できるバイトの総量。最大値は 4,294,967,295 （4GiB）です。デフォルトは 320MB です。これを 0 に設定すると、すべてのイメージ プロトコルが無効化されます。

この値はプライマリ スクリーンと代替スクリーンで別々に設定されるため、サーフェスあたりの有効な制限は 2 倍になります。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/image-storage-limit.ja.md
# ターミナル スクリーンあたりのイメージ データの最大バイト数 (default: 320000000, 320MB)
image-storage-limit = 320000000
```
