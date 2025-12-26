---
description: 指定した方向に新しいスプリットを作成
platform: all
default: N/A
---

# new_split

**言語:** [English](../../en/actions/new_split.en.md) | 日本語

## 説明

指定した方向に新しいスプリットを作成します。

有効な引数：

- `right`, `down`, `left`, `up`

  対応する方向に新しいスプリットを作成します。

- `auto`

  より大きい方向に沿って新しいスプリットを作成します。たとえば、親スプリットが現在幅より高さが広い場合、左右のスプリットが作成され、その逆も同様です。

## 例

```conf
keybind = ctrl+shift+right=new_split:right
keybind = ctrl+shift+down=new_split:down
keybind = ctrl+shift+left=new_split:left
keybind = ctrl+shift+up=new_split:up
keybind = ctrl+shift+a=new_split:auto
```
