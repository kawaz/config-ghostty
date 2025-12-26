---
description: クイック ターミナル ウィンドウの位置
platform: all
default: top
---

# quick-terminal-position

**Language:** [English](../../en/config/quick-terminal-position.en.md) | 日本語

## Description

「クイック」ターミナル ウィンドウの位置。クイック ターミナルの詳細については、`toggle_quick_terminal` バインディング アクションのドキュメントを参照してください。

有効な値は:

- `top` - ターミナルが画面の上部に表示されます。
- `bottom` - ターミナルが画面の下部に表示されます。
- `left` - ターミナルが画面の左に表示されます。
- `right` - ターミナルが画面の右に表示されます。
- `center` - ターミナルが画面の中央に表示されます。

macOS では、この設定を変更するには Ghostty 全体を再起動する必要があります。

注: クイック ターミナルを切り替えるためのデフォルト キーバインドはありません。この機能を有効にするには、`toggle_quick_terminal` アクションをキーにバインドしてください。

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/quick-terminal-position.ja.md
# クイック ターミナル ウィンドウの位置 (default: top)
quick-terminal-position = top
```
