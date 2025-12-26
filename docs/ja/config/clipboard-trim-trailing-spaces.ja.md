---
description: クリップボードへのコピー時に末尾の空白をトリムする
platform: all
default: true
---

# clipboard-trim-trailing-spaces

**言語:** [English](../../en/config/clipboard-trim-trailing-spaces.en.md) | 日本語

## 説明

クリップボードにコピーされるデータの末尾の空白をトリム。これは [`clipboard-write`](clipboard-write.ja.md) を通じてクリップボードに送信されるデータには影響しない。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#clipboard-trim-trailing-spaces
# クリップボードへのコピー時に末尾の空白をトリムする (デフォルト: true)
clipboard-trim-trailing-spaces = true
```

## 関連設定

- [`copy-on-select`](copy-on-select.ja.md)
- [`copy_to_clipboard`](../actions/copy_to_clipboard.ja.md)
- [`clipboard-write`](clipboard-write.ja.md)
