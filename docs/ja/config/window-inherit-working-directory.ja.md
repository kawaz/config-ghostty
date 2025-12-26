---
description: 前にフォーカスされたウィンドウから作業ディレクトリを継承する
platform: all
default: "true"
---

# window-inherit-working-directory

**言語:** [English](../../en/config/window-inherit-working-directory.en.md) | 日本語

## 説明

true の場合、新しいウィンドウとタブは、前にフォーカスされたウィンドウの作業ディレクトリを継承します。前にフォーカスされたウィンドウがない場合は、デフォルトの作業ディレクトリが使用されます（`working-directory` オプション）。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-inherit-working-directory.ja.md
# 前にフォーカスされたウィンドウから作業ディレクトリを継承する (default: true)
window-inherit-working-directory = true
```

## 関連設定

- [`working-directory`](working-directory.ja.md)
