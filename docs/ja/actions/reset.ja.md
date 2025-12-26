# reset

**言語:** [English](../../en/actions/reset.en.md) | 日本語

## 説明

ターミナルをリセットします。

実行中のプログラムがターミナルを破損状態にした場合、これは多くの問題を修正できます。`reset` コマンドを実行するのと同等です。

vim などの TUI プログラムの実行中にこれを行うと、プログラムが破損する可能性があります。シェル内でこれを行うと、新しいプロンプトを取得するために Enter キーを押す必要がある場合があります。

## 使用方法

このアクションは引数なしで呼び出されます：

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/reset.ja.md
# ターミナルをリセット
keybind ctrl+alt+r = reset
```
