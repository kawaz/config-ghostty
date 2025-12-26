---
description: ターミナルリサイズ中にリサイズオーバーレイを表示するタイミング
platform: all
default: after-first
---

# resize-overlay

**Language:** [English](../../en/config/resize-overlay.en.md) | 日本語

## 説明

これはリサイズオーバーレイを表示するタイミングを制御します。リサイズオーバーレイは、サーフェスがリサイズされている間、ターミナルのサイズを表示する一時的なポップアップです。可能なオプションは：

* `always` - 常にリサイズオーバーレイを表示します。
* `never` - リサイズオーバーレイを表示しません。
* `after-first` - リサイズオーバーレイはサーフェスが最初に作成されたときには表示されませんが、サーフェスがその後リサイズされた場合は表示されます。

デフォルトは `after-first` です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/resize-overlay.ja.md
# リサイズオーバーレイを表示するタイミング (default: after-first)
resize-overlay = after-first
```

## 関連

- [resize-overlay-position](resize-overlay-position.ja.md)
- [resize-overlay-duration](resize-overlay-duration.ja.md)
