---
description: クイックターミナルのキーボード相互作用モード
platform: all
default: "on-demand"
---

# quick-terminal-keyboard-interactivity

**言語:** [English](../../en/config/quick-terminal-keyboard-interactivity.en.md) | 日本語

## 説明

クイックターミナルがキーボード入力を受け取るべき状況を決定します。詳細については、対応する [Wayland ドキュメント](https://wayland.app/protocols/wlr-layer-shell-unstable-v1#zwlr_layer_surface_v1:enum:keyboard_interactivity) を参照してください。

> [!NOTE]
> 各オプションの正確な動作はコンポジターによって大きく異なる可能性があります。システムで試して、好みに合ったものを見つけてください。

有効な値は以下の通りです：

- `none` - クイックターミナルはキーボード入力を受け取りません。

- `on-demand`（デフォルト）- クイックターミナルはフォーカスされている場合にのみキーボード入力を受け取ります。

- `exclusive` - クイックターミナルは常にキーボード入力を受け取ります。別のウィンドウがフォーカスされている場合でも。

Linux Wayland でのみ効果があります。macOS では動作は常に `on-demand` と同等です。

利用可能：1.2.0 以降

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#quick-terminal-keyboard-interactivity
# クイックターミナルのキーボード相互作用モード (default: on-demand)
quick-terminal-keyboard-interactivity = on-demand
```
