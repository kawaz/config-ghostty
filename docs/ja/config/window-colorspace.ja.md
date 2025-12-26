---
description: ターミナル カラーを解釈するためのカラー スペース
platform: macos
default: srgb
---

# window-colorspace

**言語:** [English](../../en/config/window-colorspace.en.md) | 日本語

## 説明

ターミナル カラーを解釈するときに使用するカラー スペース。「ターミナル カラー」は、設定で指定されたカラー、および直接カラー SGR シーケンスで生成されたカラーを指します。

有効な値：

- `srgb` - sRGB カラー スペースでカラーを解釈します。これはデフォルトです。
- `display-p3` - Display P3 カラー スペースでカラーを解釈します。

この設定は現在、macOS でのみサポートされています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-colorspace.ja.md
# ターミナル カラーを解釈するためのカラー スペース (default: srgb)
window-colorspace = srgb
```
