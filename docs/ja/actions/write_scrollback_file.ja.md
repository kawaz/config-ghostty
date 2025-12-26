---
description: ターミナルのスクロールバックをファイルに書き込む
platform: all
---

# write_scrollback_file

**言語:** [English](../../en/actions/write_scrollback_file.en.md) | 日本語

## 説明

スクロールバック全体を、指定されたアクションで一時ファイルに書き込む。アクションはファイルパスに対して何をするかを決定する。

有効なアクション：

- `copy`

  ファイルパスをクリップボードにコピー。

- `paste`

  ファイルパスをターミナルに貼り付け。

- `open`

  デフォルト OS エディタでファイルを開く。

  デフォルト OS エディタは、macOS では `open` を、Linux では `xdg-open` を使用して決定される。

## 使用例

```conf
keybind = super+shift+s:write_scrollback_file:open
```
