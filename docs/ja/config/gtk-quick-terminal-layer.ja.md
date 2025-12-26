---
description: クイックターミナルウィンドウのレイヤー位置
platform: linux
default: "top"
---

# gtk-quick-terminal-layer

**言語:** [English](../../en/config/gtk-quick-terminal-layer.en.md) | 日本語

## 説明

クイックターミナルウィンドウのレイヤーを設定します。レイヤーが高いほど、クイックターミナルが隠す可能性のあるウィンドウが多くなります。

有効な値は以下の通りです：

- `overlay` - クイックターミナルはすべてのウィンドウの前に表示されます。

- `top`（デフォルト）- クイックターミナルは通常のウィンドウの前に表示されますが、ロック画面などのフルスクリーンオーバーレイの背後に表示されます。

- `bottom` - クイックターミナルは通常のウィンドウの背後に表示されますが、壁紙および背景レイヤー内の他のウィンドウの前に表示されます。

- `background` - クイックターミナルはすべてのウィンドウの背後に表示されます。

GTK Wayland のみ。

利用可能：1.2.0 以降

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#gtk-quick-terminal-layer
# クイックターミナルウィンドウのレイヤー位置 (default: top)
gtk-quick-terminal-layer = top
```
