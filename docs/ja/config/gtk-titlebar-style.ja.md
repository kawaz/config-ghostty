---
description: GTK タイトルバーのスタイル (native または tabs)
platform: linux
default: native
---

# gtk-titlebar-style

**言語:** [English](../../en/config/gtk-titlebar-style.en.md) | 日本語

## 説明

GTK タイトルバーのスタイル。利用可能な値は `native` と `tabs`。

`native` タイトルバースタイルは、タイトル、いくつかのボタン、およびウィンドウコントロールを備えた従来のタイトルバー。ウィンドウに複数のタブが開いている場合、タイトルバーの下に別のタブバーが表示される。

`tabs` タイトルバーは、タブバーと従来のタイトルバーをマージする。複数のタブを使用する場合、画面の垂直スペースが解放される。`tabs` タイトルバーの制限は、タイトルを持つタイトルバーをドラッグできなくなること（現在はタブタイトルだから）。`tabs` タイトルバーの他の領域を使用してウィンドウをドラッグできる。

デフォルトのスタイルは `native`。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#gtk-titlebar-style
# GTK タイトルバーのスタイル (native または tabs) (デフォルト: native)
gtk-titlebar-style = native
```

## 関連設定

- [`gtk-titlebar-hide-when-maximized`](gtk-titlebar-hide-when-maximized.ja.md)
- [`gtk-wide-tabs`](gtk-wide-tabs.ja.md)
- [`gtk-tabs-location`](gtk-tabs-location.ja.md)
