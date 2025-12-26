---
description: URL検出と開く機能を有効化
platform: all
default: true
---

# link-url

**Language:** [English](../../en/config/link-url.en.md) | 日本語

## 説明

ターミナルテキストに対して正規表現をマッチングし、クリックをアクションに関連付けます。これを使用して URL、ファイルパスなどをマッチングできます。アクションはシステムオープナー（例：`open` または `xdg-open`）を使用して開くか、任意のバインディングアクションを実行できます。

より早く設定されたリンクが、後で設定されたリンクよりも優先されます。

URL をマッチングし、システムオープナーで開くデフォルトリンクは常に存在します。これは `link-url` を使用して無効にできます。

URL マッチングを有効にします。URL は、コントロール（Linux）またはコマンド（macOS）が押された状態でホバーされ、リンクされた URL のデフォルトシステムアプリケーションを使用して開きます。

URL マッチャーは、設定されたすべてのリンク（`link` を参照）の最低優先度です。URL マッチングをカスタマイズしたい場合は、`link` を使用してこれを無効にします。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/link-url.ja.md
# URL検出と開く機能を有効化 (default: true)
link-url = true
```
