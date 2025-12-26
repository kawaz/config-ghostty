---
description: 新しく作成されるタブの位置
platform: all
default: current
---

# window-new-tab-position

**言語:** [English](../../en/config/window-new-tab-position.en.md) | 日本語

## 説明

新しいタブが作成される位置を指定します。有効な値は以下の通りです:

* `current` - 現在フォーカスされているタブの後に新しいタブを挿入します。フォーカスされたタブがない場合はリストの最後に挿入されます。
* `end` - 新しいタブをタブリストの最後に挿入します。

## デフォルト値

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-new-tab-position.ja.md
# 新しく作成されるタブの位置 (デフォルト: current)
window-new-tab-position = current
```
