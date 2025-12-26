---
description: TERM 環境変数の値
platform: all
default: xterm-ghostty
---

# term

**言語:** [English](../../en/config/term.en.md) | 日本語

## 説明

これは `TERM` 環境変数を設定するために使用されます。Vim がキー プロトコル（特に `modifyOtherKeys` を有効化する）を有効化するため、これを `xterm` プレフィックス付きで設定します。その他の機能も含まれています。Vim でこれを変更するオプションが存在します：`:set keyprotocol=ghostty:kitty`、ただし実装のバグにより正常に動作しないことが防止されています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/term.ja.md
# TERM 環境変数の値 (default: xterm-ghostty)
term = xterm-ghostty
```
