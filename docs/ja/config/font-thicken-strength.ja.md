---
description: フォント太字化が有効な場合の強度
platform: macos
default: 255
---

# font-thicken-strength

**Language:** [English](../../en/config/font-thicken-strength.en.md) | 日本語

## 説明

[`font-thicken`](font-thicken.ja.md) が有効な場合の太字化の強度。

有効な値は 0 から 255 の間の整数です。`0` は太字化なしに対応していません。むしろ、利用可能な最も明るい太字化に対応しています。

[`font-thicken`](font-thicken.ja.md) が `false` に設定されている場合は効果がありません。

これは現在のところ macOS でのみサポートされています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-thicken-strength.ja.md
# フォント太字化の強度 (default: 255)
font-thicken-strength = 255
```

## 関連

- [font-thicken](font-thicken.ja.md)
