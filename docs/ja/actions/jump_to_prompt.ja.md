---
description: プロンプト数だけビューポートを前後に移動
platform: all
default: N/A
---

# jump_to_prompt

**Language:** [English](../../en/actions/jump_to_prompt.en.md) | 日本語

## 説明

ビューポートを指定されたプロンプト数だけ前後に移動します。

シェル統合が必要です。

正の値は下にスクロールし、負の値は上にスクロールします。

## 使い方

```conf
keybind = ctrl+page_down=jump_to_prompt:1
keybind = ctrl+page_up=jump_to_prompt:-1
```
