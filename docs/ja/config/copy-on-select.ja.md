---
description: 選択したテキストを自動的にクリップボードにコピー
platform: all
default: true（Linux/macOS）、false（その他）
---

# copy-on-select

**Language:** [English](../../en/config/copy-on-select.en.md) | 日本語

## 説明

選択したテキストをクリップボードに自動的にコピーするかどうか。`true` の場合、選択クリップボードにコピーすることを優先します。そうでない場合、システムクリップボードにコピーします。

値 `clipboard` は常にテキストを選択クリップボードとシステムクリップボードの両方にコピーします。

中クリックペーストは常に選択クリップボードを使用します。中クリックペーストは、これが `false` でも常に有効です。

デフォルト値は Linux と macOS では true です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/copy-on-select.ja.md
# 選択したテキストを自動的にクリップボードにコピー (default: true)
copy-on-select = true
```

## 関連

- [clipboard-trim-trailing-spaces](clipboard-trim-trailing-spaces.ja.md)
- [clipboard-write](clipboard-write.ja.md)
