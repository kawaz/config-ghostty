---
description: タブを相対オフセットで移動
platform: all
default: N/A
---

# move_tab

**言語:** [English](../../en/actions/move_tab.en.md) | 日本語

## 説明

タブを相対オフセットで移動します。

正の値はタブを前に移動し、負の値は後ろに移動します。新しい位置が範囲外の場合、タブリスト内で循環的にラップアラウンドされます。

たとえば、`move_tab:1` はタブを1つ前に移動し、すでにリストの最後のタブであった場合、ラップアラウンドして最初のタブになります。同様に、`move_tab:-1` はタブを1つ後ろに移動し、最初のタブであった場合、最後のタブになります。

## 例

```conf
keybind = alt+shift+right=move_tab:1
keybind = alt+shift+left=move_tab:-1
```
