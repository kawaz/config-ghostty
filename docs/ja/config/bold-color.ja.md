---
description: ターミナルの太字テキストに使用される色
platform: all
default: （なし）
---

# bold-color

**Language:** [English](../../en/config/bold-color.en.md) | 日本語

## 説明

ターミナルで太字テキストに使用される色を変更します。

これを特定の色に設定することができます。[`background`](background.ja.md) または [`foreground`](foreground.ja.md) と同じ形式（例えば `#RRGGBB` ですが、他の形式もサポートされています）を使用してください。特定の色を設定した場合、この色はデフォルトの太字テキスト色として常に使用されます。太字の残りの色を `bright` に設定します。

これを `bright` に設定することもできます。これは太字テキストに明るい色パレットを使用します。たとえば、テキストが赤い場合、太字は明るい赤の色を使用します。ターミナルパレットは [`palette`](palette.ja.md) で設定されますが、ターミナルアプリケーション自体が OSC 4 のようなエスケープシーケンスを使ってオーバーライドすることもできます。

Ghostty 1.2.0 以降で利用可能です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/bold-color.ja.md
# 太字テキストに使用される色 (default: inherit)
bold-color =
```

## 関連

- [foreground](foreground.ja.md)
- [background](background.ja.md)
- [palette](palette.ja.md)
