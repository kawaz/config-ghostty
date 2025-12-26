---
description: クイックターミナルが表示されるスクリーン
platform: macos
default: main
---

# quick-terminal-screen

**Language:** [English](../../en/config/quick-terminal-screen.en.md) | 日本語

## 説明

クイックターミナルが表示されるべきスクリーン。

有効な値は：

- `main` - オペレーティング システムがメイン スクリーンとして推奨するスクリーン。macOS では、これは現在キーボード入力を受け取っているスクリーンです。このスクリーンはオペレーティング システムによって定義され、Ghostty によって選択されません。
- `mouse` - マウスが現在ホバーしているスクリーン。
- `macos-menu-bar` - macOS のディスプレイ設定で設定されている macOS メニュー バーが含まれているスクリーン。macOS のすべてのスクリーンにメニュー バーがあるため、少し混乱していますが、これはプライマリメニュー バーが含まれているスクリーンです。

デフォルト値は `main` です。これはオペレーティング システムから推奨されるスクリーンです。

macOS でのみ実装されています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/quick-terminal-screen.ja.md
# クイックターミナルが表示されるスクリーン (default: main)
quick-terminal-screen = main
```
