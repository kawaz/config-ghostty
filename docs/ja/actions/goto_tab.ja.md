---
description: インデックス番号で特定のタブに移動
platform: all
default: ""
---

# goto_tab

**言語:** [English](../../en/actions/goto_tab.en.md) | 日本語

## 説明

特定のインデックスを持つタブに移動します。1 から開始します。

タブ番号がタブの数より高い場合、最後のタブに移動します。

## 使用方法

```conf
goto_tab:{number}
```

例：

```conf
goto_tab:1
goto_tab:2
goto_tab:3
```
