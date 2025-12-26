---
description: コマンドパレットの表示を切り替える
platform: all
---

# toggle_command_palette

**言語:** [English](../../en/actions/toggle_command_palette.en.md) | 日本語

## 説明

コマンドパレットの表示を切り替える。

コマンドパレットは、実行できるアクション、それらの関連付けられたキーバインディング (あれば)、アクションをフィルタリングするための検索バー、およびアクションを実行する機能を確認させるポップアップ。

Linux では libadwaita 1.5 以降が必要。現在の libadwaita バージョンは `ghostty +version` を実行することで確認できる。

## 使用例

```conf
keybind = super+shift+p:toggle_command_palette
```
