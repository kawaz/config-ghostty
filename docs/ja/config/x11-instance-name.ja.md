---
description: X11 WM_CLASS インスタンス名を設定する
platform: linux
default: ghostty
---

# x11-instance-name

**言語:** [English](../../en/config/x11-instance-name.en.md) | 日本語

## 説明

X11 で実行している場合、`WM_CLASS` X11 プロパティのインスタンス名フィールドを制御する。それ以外の場合は効果はない。

デフォルトは `ghostty`。

これは GTK ビルドにのみ影響する。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#x11-instance-name
# X11 WM_CLASS インスタンス名を設定する (デフォルト: ghostty)
x11-instance-name =
```
