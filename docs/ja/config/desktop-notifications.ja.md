---
description: ターミナルアプリケーションがデスクトップ通知を表示することを許可
platform: all
default: "true"
---

# desktop-notifications

**言語:** [English](../../en/config/desktop-notifications.en.md) | 日本語

## 説明

`true`（デフォルト）の場合、ターミナルで実行されているアプリケーションは、OSC 9 または OSC 777 などの特定のエスケープシーケンスを使用してデスクトップ通知を表示できます。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#desktop-notifications
# ターミナルアプリケーションがデスクトップ通知を表示することを許可 (default: true)
desktop-notifications = true
```
