# resize_split

**言語:** [English](../../en/actions/resize_split.en.md) | 日本語

## 説明

指定した方向と量（ピクセル単位）で現在の分割をリサイズします。2 つの引数をコンマ (`,`) で結合する必要があります。例えば `resize_split:up,10` のように。

## 使用方法

このアクションは方向と量の引数が必要です：

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/resize_split.ja.md
# 現在の分割をリサイズ
keybind alt+up = resize_split:up,10
keybind alt+down = resize_split:down,10
keybind alt+left = resize_split:left,10
keybind alt+right = resize_split:right,10
```

## 関連

- [`equalize_splits`](equalize_splits.ja.md)
- [`new_split`](new_split.ja.md)
