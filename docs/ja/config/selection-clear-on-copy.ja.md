---
description: クリップボードにコピー後に選択テキストをクリア
platform: all
default: false
---

# selection-clear-on-copy

**言語:** [English](../../en/config/selection-clear-on-copy.en.md) | 日本語

## 説明

コピー後に選択したテキストをクリアするかどうか。これはデフォルトで `false` です。

`true` に設定すると、`copy_to_clipboard` キーボードバインドを呼び出すすべてのコピー操作の後に、選択が自動的にクリアされます。重要なのは、`copy-on-select` 経由でコピー操作が呼び出された場合、選択はクリアされないということです。

`false` に設定すると、コピー後も選択が表示され、コピーされた内容を確認し、同じ選択で追加の操作を実行できます。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#selection-clear-on-copy
# クリップボードにコピー後に選択テキストをクリア (default: false)
selection-clear-on-copy = false
```

## 関連設定

- [`copy-on-select`](copy-on-select.ja.md)
- [`selection-clear-on-typing`](selection-clear-on-typing.ja.md)
