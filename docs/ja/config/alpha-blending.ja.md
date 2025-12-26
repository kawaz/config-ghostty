---
description: アルファ合成に使用する色空間
platform: all
default: "native"
---

# alpha-blending

**言語:** [English](../../en/config/alpha-blending.en.md) | 日本語

## 説明

アルファ合成を実行するときに使用する色空間を設定します。

これは、テキストと透明度を持つ任意の画像の外観に影響します。さらに、カスタムシェーダーは設定された色空間で色を受け取ります。

macOS ではデフォルトは `native`、その他のすべてのプラットフォームではデフォルトは `linear-corrected` です。

有効な値：

- `native` - OS のネイティブ色空間でアルファ合成を実行します。macOS ではこれは Display P3 に対応し、Linux では sRGB です。

- `linear` - 線形空間でアルファ合成を実行します。これにより、特定の色の組み合わせが使用される場合に非常に目立つテキストのエッジ周辺の暗くなるアーティファクトが除去されますが、暗いテキストは通常よりはるかに薄く見え、明るいテキストはより厚く見えます。これは「ガンマ補正」として知られることもあります。

- `linear-corrected` - `linear` と同じですが、テキストの補正ステップが適用されており、`native` とほぼまたは完全に同じに見えますが、暗くなるアーティファクトはありません。

利用可能：1.1.0 以降

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#alpha-blending
# アルファ合成に使用する色空間 (default: native)
alpha-blending = native
```
