---
description: 明示的なバックグラウンド カラーを持つセルに透過度を適用する
platform: all
default: "false"
---

# background-opacity-cells

**言語:** [English](../../en/config/background-opacity-cells.en.md) | 日本語

## 説明

明示的に設定されたバックグラウンド カラーを持つセルにバックグラウンド透過度を適用します。

通常、`background-opacity` はウィンドウ バックグラウンドにのみ適用されます。セルに赤などの明示的なバックグラウンド カラーが設定されている場合、そのバックグラウンド カラーは完全に不透明になります。これの影響として、Neovim や Tmux など、ターミナルのバックグラウンド カラーを再描画する一部のターミナル アプリケーションは、（設計上）`background-opacity` を尊重しない可能性があります。

これを `true` に設定すると、セルが明示的なバックグラウンド カラー設定を持つかどうかに関わらず、`background-opacity` がすべてのセルに適用されます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/background-opacity-cells.ja.md
# 明示的なバックグラウンド カラーを持つセルに透過度を適用する (default: false)
background-opacity-cells = false
```

## 関連設定

- [`background-opacity`](background-opacity.ja.md)
