---
description: 背景画像をターミナルに合わせてスケーリングする
platform: all
default: contain
---

# background-image-fit

**言語:** [English](../../en/config/background-image-fit.en.md) | 日本語

## 説明

有効な値は以下の通りです：

- `contain`

  アスペクト比を保持しながら、背景画像をターミナル内に含まれる最大サイズにスケーリングして、画像全体が表示されるようにします。

- `cover`

  アスペクト比を保持しながら、背景画像をターミナルを完全にカバーする最小サイズにスケーリングします。これにより、画像の1辺以上がターミナルの端でクリップされる可能性があります。

- `stretch`

  背景画像をターミナルの全体サイズに伸ばし、アスペクト比を保持しません。

- `none`

  背景画像をスケーリングしません。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/background-image-fit.ja.md
# 背景画像をターミナルに合わせてスケーリングする (default: contain)
background-image-fit = contain
```

## 関連設定

- [`background-image`](background-image.ja.md)
- [`background-image-opacity`](background-image-opacity.ja.md)
- [`background-image-position`](background-image-position.ja.md)
- [`background-image-repeat`](background-image-repeat.ja.md)
