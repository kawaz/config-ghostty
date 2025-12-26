---
description: マウスホイール用のスクロール距離の乗数
platform: all
default: precision:1,discrete:3
---

# mouse-scroll-multiplier

**Language:** [English](../../en/config/mouse-scroll-multiplier.en.md) | 日本語

## 説明

マウスホイールでスクロール距離の乗数。

`precision:` または `discrete:` のプレフィックスを使用して、特定の種類のデバイスでのみ乗数を設定できます。これらはコンマで区切って、両方のタイプの乗数を同時に設定できます。例えば `precision:0.1,discrete:3`。プレフィックスを使用しない場合、乗数はすべてのスクロールデバイスに適用されます。プレフィックスの指定は Ghostty 1.2.1 で導入されました。

値は [0.01, 10,000] にクランプされます。これらは両方とも極端であり、どちらかの極端を設定した場合、悪い経験を持つ可能性があります。

デフォルト値は、不連続デバイスの場合 "3"、精密デバイスの場合 "1" です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/mouse-scroll-multiplier.ja.md
# スクロール距離の乗数 (default: precision:1,discrete:3)
mouse-scroll-multiplier = precision:1,discrete:3
```

## 関連

- [mouse-shift-capture](mouse-shift-capture.ja.md)
- [mouse-hide-while-typing](mouse-hide-while-typing.ja.md)
