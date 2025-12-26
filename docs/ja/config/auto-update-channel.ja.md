---
description: 自動更新用のリリースチャネル
platform: macos
default: （現在のバージョンと一致）
---

# auto-update-channel

**Language:** [English](../../en/config/auto-update-channel.en.md) | 日本語

## 説明

自動更新に使用するリリースチャネル。

このデフォルト値は、現在実行中の Ghostty バージョンのリリースチャネルと一致します。Ghostty のプリリリースバージョンをダウンロードした場合、これは `tip` に設定され、プリリリース更新を受け取ります。Ghostty の安定バージョンをダウンロードした場合、これは `stable` に設定され、安定更新を受け取ります。

有効な値は：

* `stable` - 「1.0.0」のような安定したタグ付きリリース。
* `tip` - メインブランチへのコミットごとに生成されたプリリリースバージョン。これは、数千人によるプライベートベータテスト中に使用されていたバージョンです。一般的に安定していますが、安定チャネルよりもバグが多い可能性があります。

この設定を変更すると、Ghostty の完全な再起動が必要になります。

これは macOS でのみ機能します。macOS のみが自動更新機能を持つためです。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/auto-update-channel.ja.md
# 自動更新用のリリースチャネル (default: matches current version)
auto-update-channel =
```

## 関連

- [auto-update](auto-update.ja.md)
