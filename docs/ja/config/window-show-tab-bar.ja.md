---
description: タブバーの表示を制御する
platform: linux
default: auto
---

# window-show-tab-bar

**言語:** [English](../../en/config/window-show-tab-bar.en.md) | 日本語

## 説明

タブバーを表示するかどうか。

有効な値：

- `always`

  タブが 1 つだけの場合でも、常にタブバーを表示。

  利用可能時期: 1.2.0

- `auto` *(デフォルト)*

  タブバーを自動的に表示/非表示。タブバーは 2 つ以上のタブがある場合のみ表示される。

- `never`

  タブバーを表示しない。タブはタブオーバービューまたはキーバインドアクションを通じてのみアクセス可能。

現在 Linux (GTK) でのみサポートされている。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#window-show-tab-bar
# タブバーの表示を制御する (デフォルト: auto)
window-show-tab-bar = auto
```

## 関連設定

- [`gtk-tabs-location`](gtk-tabs-location.ja.md)
- [`window-new-tab-position`](window-new-tab-position.ja.md)
