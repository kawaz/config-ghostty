---
description: ターミナルのデフォルトカーソルスタイル
platform: all
default: block
---

# cursor-style

**Language:** [English](../../en/config/cursor-style.en.md) | 日本語

## 説明

カーソルのスタイル。これはデフォルトのスタイルを設定します。実行中のプログラムは、`CSI q` などのエスケープシーケンスを使用して、カーソルの明示的なスタイルをリクエストすることができます。シェル設定は、特定のカーソルスタイルをリクエストしていることがあります。

シェル統合により、プロンプトの時点でカーソルが自動的にバーに設定されることに注意してください。この動作を無効にするには、`shell-integration-features = no-cursor` を指定するか、シェル統合全体を無効にすることができます。

有効な値は：

* `block`
* `bar`
* `underline`
* `block_hollow`

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/cursor-style.ja.md
# デフォルトカーソルスタイル (default: block)
cursor-style = block
```

## 関連

- [cursor-opacity](cursor-opacity.ja.md)
- [cursor-color](cursor-color.ja.md)
- [shell-integration](shell-integration.ja.md)
