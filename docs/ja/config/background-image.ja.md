# background-image

**言語:** [English](../../en/config/background-image.en.md) | 日本語

## 説明

ターミナルの背景画像。

これは PNG または JPEG ファイルへのパスである必要があります。他の画像形式はまだサポートされていません。

背景画像は現在、ウィンドウごとではなくターミナルごとです。分割を多く使用する場合、背景画像は分割全体で繰り返されます。Ghostty への今後の改善がこれに対処します。

警告: 背景画像は現在、VRAM でターミナルごとに複製されています。十分に大きな画像の場合、これはメモリ使用量（特に VRAM 使用量）の大幅な増加につながる可能性があります。今後の Ghostty の改善では、ターミナル全体で画像テクスチャを共有することでこれを解決します。

利用可能: 1.2.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/background-image.ja.md
# 背景画像パス (default: unset)
background-image =
```

## 関連設定

- [`background-image-fit`](background-image-fit.ja.md)
- [`background-image-repeat`](background-image-repeat.ja.md)
- [`background-image-position`](background-image-position.ja.md)
