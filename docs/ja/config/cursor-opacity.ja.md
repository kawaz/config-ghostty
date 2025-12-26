---
description: カーソルの不透明度レベルを制御
platform: all
default: "1"
---

# cursor-opacity

**Language:** [English](../../en/config/cursor-opacity.en.md) | 日本語

## Description

カーソルの不透明度レベル (透明度の反対)。値 1 は完全に不透明であり、値 0 は完全に透明です。0 より小さい値または 1 より大きい値は、最も近い有効な値にクランプされます。0.3 などの十分に小さい値は、効果的に見えなくなり、カーソルを見つけるのが難しくなる可能性があることに注意してください。

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/cursor-opacity.ja.md
# カーソルの不透明度レベルを制御 (default: 1)
cursor-opacity = 1
```
