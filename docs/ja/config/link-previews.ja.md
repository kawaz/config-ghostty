---
description: マッチされた URL のプレビューツールチップを表示
platform: all
default: "true"
---

# link-previews

**言語:** [English](../../en/config/link-previews.en.md) | 日本語

## 説明

マッチされた URL のリンク プレビューを表示するかを設定します。

true の場合、すべてのマッチされた URL に対してリンク プレビューが表示されます。false の場合、リンク プレビューは表示されません。「osc8」に設定された場合、OSC 8 シーケンスで作成されたハイパーリンクに対してのみリンク プレビューが表示されます（この場合、リンク テキストはリンク先と異なる可能性があります）。

利用可能：1.2.0 以降

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#link-previews
# マッチされた URL のプレビューツールチップを表示 (default: true)
link-previews = true
```
