---
description: サーフェスを閉じる前に確認する
platform: all
default: "true"
---

# confirm-close-surface

**言語:** [English](../../en/config/confirm-close-surface.en.md) | 日本語

## 説明

サーフェスを閉じる前に確認します。

これはデフォルトで `true` です。`false` に設定されている場合は、サーフェスは確認なしに閉じられます。これは `always` に設定することもでき、シェル統合がプロセスが実行されていないことを示している場合でも、サーフェスを閉じることを常に確認します。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/confirm-close-surface.ja.md
# サーフェスを閉じる前に確認する (default: true)
confirm-close-surface = true
```
