---
description: ウィンドウテーマの外観
platform: macos, linux
default: auto
---

# window-theme

**Language:** [English](../../en/config/window-theme.en.md) | 日本語

## 説明

ウィンドウに使用するテーマです。有効な値：

- `auto` - 設定されたターミナルの背景色に基づいてテーマを決定します。"theme" 設定に独立した明るいテーマと暗いテーマがある場合、このオプションは効果がありません。その場合、"auto" の動作は "system" と同等です。
- `system` - システムテーマを使用します。
- `light` - システムテーマに関わらず、明るいテーマを使用します。
- `dark` - システムテーマに関わらず、暗いテーマを使用します。
- `ghostty` - Ghostty 設定で指定された背景色と前景色を使用します。これは Linux ビルドでのみサポートされています。

macOS では、`macos-titlebar-style` が "tabs" の場合、ウィンドウテーマはターミナル背景色の明度に基づいて自動的に設定されます。これはターミナルウィンドウにのみ適用されます。この設定は、Ghostty 内の非ターミナルウィンドウにも適用されます。

現在、macOS と Linux でのみサポートされています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-theme.ja.md
# ウィンドウテーマの外観 (default: auto)
window-theme = auto
```
