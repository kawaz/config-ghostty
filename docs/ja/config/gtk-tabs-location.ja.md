---
description: GTK タブバーの位置 (上、下、または非表示)
platform: linux
default: top
---

# gtk-tabs-location

**言語:** [English](../../en/config/gtk-tabs-location.en.md) | 日本語

## 説明

GTK タブバーがスティックする画面の側を決定する。上、下、および非表示がサポートされている。デフォルトは上。

`hidden` が設定されている場合、タブの数を表示するタブボタンがタイトルバーに表示される。タブを表示するためにタブオーバービューを開く機能がある。または、ウィンドウにタイトルバーがない場合は、[`toggle_tab_overview`](../actions/toggle_tab_overview.ja.md) アクションをキーバインドで使用したり、キーバインドでタブを切り替えたりできる。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#gtk-tabs-location
# GTK タブバーの位置 (上、下、または非表示) (デフォルト: top)
gtk-tabs-location = top
```

## 関連設定

- [`gtk-titlebar-style`](gtk-titlebar-style.ja.md)
- [`window-show-tab-bar`](window-show-tab-bar.ja.md)
- [`gtk-wide-tabs`](gtk-wide-tabs.ja.md)
