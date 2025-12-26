---
description: ターミナルプログラムからのクリップボード書き込みアクセスを制御
platform: all
default: "allow"
---

# clipboard-write

**言語:** [English](../../en/config/clipboard-write.en.md) | 日本語

## 説明

ターミナルで実行されているプログラムがシステムクリップボードへの読み書きを許可するかどうかを設定します（OSC 52）。デフォルトは、ユーザーにプロンプトした後にクリップボード読み取りを許可し、無条件で書き込みを許可することです。

有効な値は以下の通りです：

- `ask`
- `allow`
- `deny`

## 関連設定

- [clipboard-read](clipboard-read.ja.md)

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#clipboard-write
# ターミナルプログラムからのクリップボード書き込みアクセスを制御 (default: allow)
clipboard-write = allow
```
