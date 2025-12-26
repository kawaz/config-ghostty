---
description: 現在のタブまたは他のすべてのタブを閉じる
platform: all
default: N/A
---

# close_tab

**Language:** [English](../../en/actions/close_tab.en.md) | 日本語

## 説明

現在のタブとそれに含まれるすべての分割を閉じる _または_ 現在のタブ以外のタブとそれに含まれるすべての分割を閉じます。モードによって異なります。

モードが指定されていない場合、デフォルトは現在のタブを閉じることです。

これは [`confirm-close-surface`](../config/confirm-close-surface.ja.md) 設定の値に応じて、閉じる確認ポップアップをトリガーする可能性があります。

## 使い方

```conf
keybind = ctrl+w=close_tab
keybind = ctrl+shift+w=close_tab:other
```
