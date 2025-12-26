---
description: 背景色に対する背景画像の不透明度
platform: all
default: 1
---

# background-image-opacity

**言語:** [English](../../en/config/background-image-opacity.en.md) | 日本語

## 説明

背景画像の不透明度。

これは [`background-opacity`](background-opacity.ja.md) の値に対する相対値です。

デフォルトの `1.0` の値では、背景画像が一般的な背景色の上に配置され、その後、結合された結果が [`background-opacity`](background-opacity.ja.md) で指定された不透明度に調整されます。

`1.0` より小さい値では、背景画像が一般的な背景色と混合され、その後、結合された結果が設定された [`background-opacity`](background-opacity.ja.md) に調整されます。

`1.0` より大きい値では、背景画像の不透明度が一般的な背景色より高くなります。たとえば、設定された [`background-opacity`](background-opacity.ja.md) が `0.5` で `background-image-opacity` が `1.5` に設定されている場合、背景画像の最終的な不透明度は `0.5 * 1.5 = 0.75` になります。

利用可能な場合：1.2.0

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#background-image-opacity
# 背景色に対する背景画像の不透明度 (default: 1)
background-image-opacity = 1
```

## 関連設定

- [`background-opacity`](background-opacity.ja.md)
- [`background-image`](background-image.ja.md)
- [`background-image-fit`](background-image-fit.ja.md)
