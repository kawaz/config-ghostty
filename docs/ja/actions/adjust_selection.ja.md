---
description: 指定した方向で現在の選択を調整
platform: all
default: N/A
---

# adjust_selection

**言語:** [English](../../en/actions/adjust_selection.en.md) | 日本語

## 説明

カーソルを基準として、特定の方向または位置で現在の選択を調整します。

警告：これは新しい選択を作成せず、現在選択がない場合は何もしません。

有効な引数は：

- `left`, `right`

  選択をそれぞれ左または右に 1 セル調整します。

- `up`, `down`

  選択をそれぞれ上または下に 1 行調整します。

- `page_up`, `page_down`

  選択をそれぞれ 1 ページ上または下に調整します。

- `home`, `end`

  選択をそれぞれ画面の左上隅または右下隅に調整します。

- `beginning_of_line`, `end_of_line`

  選択をそれぞれ行の開始または終了に調整します。

## 例

```conf
keybind = shift+left=adjust_selection:left
keybind = shift+right=adjust_selection:right
keybind = shift+up=adjust_selection:up
keybind = shift+down=adjust_selection:down
```

## 関連アクション

- [`copy_to_clipboard`](copy_to_clipboard.ja.md)
- [`select_all`](select_all.ja.md)
