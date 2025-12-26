---
description: スペース切替時のクイックターミナルの動作
platform: macos
default: move
---

# quick-terminal-space-behavior

**Language:** [English](../../en/config/quick-terminal-space-behavior.en.md) | 日本語

## 説明

この設定オプションは、macOS スペース間を切り替える場合のクイックターミナルの動作を決定します。macOS スペースは、手動で作成された、または、アプリケーションがフルスクリーン モードにある場合に自動的に作成される仮想デスクトップです。

有効な値は：

- `move` - 別のスペースに切り替える場合、クイックターミナルも現在のスペースに移動します。
- `remain` - クイックターミナルは、元々開かれたスペースにのみ留まり、別のスペースに切り替える場合は追従しません。

デフォルト値は `move` です。

macOS でのみ実装されています。
Linux では、動作は常に `move` と同等です。

利用可能: 1.1.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/quick-terminal-space-behavior.ja.md
# スペース切替時のクイックターミナルの動作 (default: move)
quick-terminal-space-behavior = move
```
