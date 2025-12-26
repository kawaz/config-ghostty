---
description: GTK タブが利用可能なスペースを埋める（ワイドスタイル）
platform: linux
default: true
---

# gtk-wide-tabs

**言語:** [English](../../en/config/gtk-wide-tabs.en.md) | 日本語

## 説明

`true`（デフォルト）の場合、Ghostty GTK タブは「wide」になります。ワイドタブは、タブが利用可能なスペースを埋める新しい典型的な Gnome スタイルです。これを `false` に設定すると、タブは必要なスペースのみを占有します。これは古いスタイルです。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#gtk-wide-tabs
# GTK タブが利用可能なスペースを埋める（ワイドスタイル） (default: true)
gtk-wide-tabs = true
```

## 関連設定

- [`window-show-tab-bar`](window-show-tab-bar.ja.md)
- [`gtk-tabs-location`](gtk-tabs-location.ja.md)
