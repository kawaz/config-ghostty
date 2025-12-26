---
description: デフォルトのカーソルブリンク状態
platform: all
default: ""
---

# cursor-style-blink

**Language:** [English](../../en/config/cursor-style-blink.en.md) | 日本語

## 説明

カーソルのデフォルトのブリンク状態を設定します。これはデフォルト状態です。実行中のプログラムは `DECSCUSR` (`CSI q`) を使用してカーソルスタイルをオーバーライドできます。

これが設定されていない場合、カーソルはデフォルトでブリンクします。これは下記に記載されているように "true" 値と同じではないことに注意してください。

これがまったく設定されていない場合（`null`）、Ghostty は DEC Mode 12（AT&T カーソルブリンク）をブリンクのオン/オフを切り替える別のアプローチとしてサポートします。これが null 以外の値に設定されている場合、DEC Mode 12 は無視されますが、`DECSCUSR` は引き続きサポートされます。

有効な値は：

- ` ` （空白）
- `true`
- `false`

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/cursor-style-blink.ja.md
# デフォルトのカーソルブリンク状態 (default: "")
cursor-style-blink =
```
