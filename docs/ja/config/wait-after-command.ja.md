---
description: コマンド終了後もターミナルを開いたままにする
platform: all
default: "false"
---

# wait-after-command

**Language:** [English](../../en/config/wait-after-command.en.md) | 日本語

## Description

true の場合、コマンド終了後もターミナルを開いたままにします。通常、シェルなどの実行コマンドが終了するとターミナル ウィンドウが閉じます。これが true の場合、ターミナル ウィンドウはキー入力が受け取られるまで開いたままになります。

これは主にスクリプトやデバッグに役立ちます。

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/wait-after-command.ja.md
# コマンド終了後もターミナルを開いたままにする (default: false)
wait-after-command = false
```
