---
description: 異常なプロセス終了検出のしきい値
platform: all
default: 250
---

# abnormal-command-exit-runtime

**Language:** [English](../../en/config/abnormal-command-exit-runtime.en.md) | 日本語

## 説明

プロセス終了を異常と見なすランタイムの下限ミリ秒数。これは、プロセスが早期に終了した場合にエラー メッセージを表示するために使用されます。

Linux では、これはゼロ以外の終了コードと組み合わせる必要があります。macOS では、shell プロセスが login コマンド経由で起動される方法により、任意の終了コードを許可します。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/abnormal-command-exit-runtime.ja.md
# 異常なプロセス終了検出のしきい値 (default: 250)
abnormal-command-exit-runtime = 250
```
