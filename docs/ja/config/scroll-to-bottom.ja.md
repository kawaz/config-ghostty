---
description: サーフェスを下にスクロールするタイミング
platform: all
default: keystroke,no-output
---

# scroll-to-bottom

**言語:** [English](../../en/config/scroll-to-bottom.en.md) | 日本語

## 説明

サーフェスを下にスクロールするタイミング。形式は、コンマで区切られたオプションのリストです。オプションの前に `no-` を付けると無効化されます。オプションを省略した場合は、デフォルト値が使用されます。

利用可能なオプション：

- `keystroke` 設定されている場合、PTY に送信されるデータをもたらすキーを押すと（基本的には Ghostty で処理されるモディファイアまたはキーバインド以外のすべて）、サーフェスを下にスクロールします。

- `output` 設定されている場合、表示する新しいデータがあれば、サーフェスを下にスクロールします。（現在、実装されていません。）

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/scroll-to-bottom.ja.md
# サーフェスを下にスクロールするタイミング (default: keystroke,no-output)
scroll-to-bottom = keystroke,no-output
```
