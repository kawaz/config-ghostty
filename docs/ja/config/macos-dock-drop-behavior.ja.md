---
description: Ghostty ドックアイコンにファイルをドロップしたときの動作
platform: macos
default: new-tab
---

# macos-dock-drop-behavior

**言語:** [English](../../en/config/macos-dock-drop-behavior.en.md) | 日本語

## 説明

macOS ドックの Ghostty アイコンにファイルまたはフォルダをドロップしたときのウィンドウの動作を制御する。

有効な値：

- `new-tab` - 現在のウィンドウに新しいタブを作成するか、存在しない場合は新しいウィンドウを開く。
- `window` - 無条件に新しいウィンドウを作成。

デフォルト値は `new-tab`。

この設定は macOS でのみサポートされており、他のプラットフォームでは効果がない。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-dock-drop-behavior
# Ghostty ドックアイコンにファイルをドロップしたときの動作 (デフォルト: new-tab)
macos-dock-drop-behavior = new-tab
```

## 関連アクション

- [`new_window`](../actions/new_window.ja.md)
- [`new_tab`](../actions/new_tab.ja.md)
