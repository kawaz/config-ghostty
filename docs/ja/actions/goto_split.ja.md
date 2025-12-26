---
description: 指定した方向のスプリットにフォーカス
platform: all
default: N/A
---

# goto_split

**言語:** [English](../../en/actions/goto_split.en.md) | 日本語

## 説明

指定した方向（`right`、`down`、`left`、`up`）のスプリットか、作成順の隣接スプリット（`previous` と `next`）にフォーカスを当てます。

## 例

```conf
keybind = alt+right=goto_split:right
keybind = alt+down=goto_split:down
keybind = alt+left=goto_split:left
keybind = alt+up=goto_split:up
keybind = alt+n=goto_split:next
keybind = alt+p=goto_split:previous
```

## 関連アクション

- [`new_split`](new_split.ja.md)
- [`resize_split`](resize_split.ja.md)
- [`toggle_split_zoom`](toggle_split_zoom.ja.md)
