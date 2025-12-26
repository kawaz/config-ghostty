---
description: スクリーンのリフレッシュレートとレンダリングを同期
platform: macos
default: true
---

# window-vsync

**Language:** [English](../../en/config/window-vsync.en.md) | 日本語

## 説明

スクリーンのリフレッシュレートとレンダリングを同期します。true の場合、テアリングが最小化され、再描画がスクリーンと同期しますが、入力レイテンシが増加する可能性があります。false の場合、再描画の頻度が最大化されますが、テアリングが発生する可能性があり、高負荷時には CPU と電力をより多く使用します。

これは true がデフォルトです。なぜなら、macOS での非同期レンダリングはカーネルパニック（macOS 14.4+）を引き起こし、DisplayLink などの一部のハードウェアでの外部ディスプレイのパフォーマンスの問題を引き起こすためです。入力レイテンシを最小化したい場合は、上記の既知のリスクを承知の上でこれを false に設定してください。

ランタイム中にこの値を変更すると、新しいターミナルにのみ影響します。

この設定は現在、macOS でのみサポートされています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-vsync.ja.md
# スクリーンのリフレッシュレートとレンダリングを同期 (default: true)
window-vsync = true
```
