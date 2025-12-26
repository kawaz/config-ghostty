---
description: クリック間隔の検出時間 (ミリ秒単位)
platform: all
default: 0 (プラットフォーム依存)
---

# click-repeat-interval

**言語:** [English](../../en/config/click-repeat-interval.en.md) | 日本語

## 説明

クリックをリピート (ダブル、トリプルなど) または完全に新しい単一クリックと見なすためのクリック間のミリ秒単位の時間。値ゼロはプラットフォーム固有のデフォルトを使用する。macOS のデフォルトは OS 設定で決定される。他のすべてのプラットフォームでは 500ms。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#click-repeat-interval
# クリック間隔の検出時間 (ミリ秒単位) (デフォルト: 0)
click-repeat-interval = 0
```

## 関連設定

- [`mouse-scroll-multiplier`](mouse-scroll-multiplier.ja.md)
- [`mouse-shift-capture`](mouse-shift-capture.ja.md)
