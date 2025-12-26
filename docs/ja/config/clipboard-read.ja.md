---
description: ターミナルプログラムからのクリップボード読み取りアクセスを制御
platform: all
default: "ask"
---

# clipboard-read

**言語:** [English](../../en/config/clipboard-read.en.md) | 日本語

## 説明

ターミナルで実行されているプログラムがシステムクリップボードへの読み書きを許可するかどうかを設定します（OSC 52）。デフォルトは、ユーザーにプロンプトした後にクリップボード読み取りを許可し、無条件で書き込みを許可することです。

有効な値は以下の通りです：

- `ask`
- `allow`
- `deny`

## 関連設定

- [clipboard-write](clipboard-write.ja.md)

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#clipboard-read
# ターミナルプログラムからのクリップボード読み取りアクセスを制御 (default: ask)
clipboard-read = ask
```
