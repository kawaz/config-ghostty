---
description: ウィンドウのサブタイトルに表示するテキスト
platform: linux
default: false
---

# window-subtitle

**言語:** [English](../../en/config/window-subtitle.en.md) | 日本語

## 説明

ウィンドウのサブタイトルに表示されるテキスト。有効な値：

- `false` - サブタイトルを無効にする。
- `working-directory` - サブタイトルをサーフェスの作業ディレクトリに設定。

この機能は GTK でのみサポートされている。

利用可能時期: 1.1.0

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#window-subtitle
# ウィンドウのサブタイトルに表示するテキスト (デフォルト: false)
window-subtitle = false
```

## 関連設定

- [`title`](title.ja.md)
- [`window-title-font-family`](window-title-font-family.ja.md)
