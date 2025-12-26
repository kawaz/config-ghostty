---
description: FreeType フォントレンダリングロードフラグ
platform: linux
default: hinting,no-force-autohint,no-monochrome,autohint
---

# freetype-load-flags

**Language:** [English](../../en/config/freetype-load-flags.en.md) | 日本語

## 説明

有効にする FreeType ロードフラグ。このフォーマットは、コンマで区切られた有効にするフラグのリストです。フラグの前に `no-` を付けると、無効になります。フラグを省略した場合、デフォルト値が使用されるため、不要なフラグは明示的に無効にする必要があります。`true` または `false` を使って、すべてのフラグをオンまたはオフにすることもできます。

この設定は FreeType を使用する Ghostty ビルドにのみ適用されます。これは通常、Linux ビルドのみの場合です。macOS は CoreText を使用し、同等の設定がありません。

利用可能なフラグ：

* `hinting` - ヒンティングを有効または無効にします。デフォルトで有効です。
* `force-autohint` - フォントのネイティブヒンターの代わりに FreeType オートヒンターを常に使用します。デフォルトで無効です。
* `monochrome` - レンダラーに 1 ビットモノクロレンダリングを使用するよう指示します。これはアンチエイリアスを無効にし、ピクセルフォント以外では見栄えが悪くなります。デフォルトで無効です。
* `autohint` - FreeType オートヒンターを有効にします。デフォルトで有効です。

例: `hinting`, `no-hinting`, `force-autohint`, `no-force-autohint`

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/freetype-load-flags.ja.md
# FreeType ロードフラグ (default: hinting,no-force-autohint,no-monochrome,autohint)
freetype-load-flags = hinting,no-force-autohint,no-monochrome,autohint
```
