---
description: 以前にバインドされたキーバインディングのバインドを解除
platform: all
default:
---

# unbind

**Language:** [English](../../en/actions/unbind.en.md) | 日本語

## Description

以前にバインドされたキー バインディングのバインドを解除します。

これは、Ghostty またはユーザーによってバインドされていないバインディング (たとえば、OS または他のアプリケーションによって設定されたバインディング) のバインドを解除することはできません。

## Example

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/unbind.ja.md
# 以前にバインドされたキーバインディングのバインドを解除
keybind = ctrl+c=unbind
```
