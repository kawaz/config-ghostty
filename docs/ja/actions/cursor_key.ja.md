# cursor_key

**言語:** [English](../../en/actions/cursor_key.en.md) | 日本語

## 説明

カーソルキーモードが有効（`application`）か無効（`normal`）かに応じて、pty にデータを送信します。

## 使用方法

このアクションはモード引数が必要です：

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/cursor_key.ja.md
# カーソルキーデータを送信
keybind up = cursor_key:application,up
keybind down = cursor_key:application,down
```
