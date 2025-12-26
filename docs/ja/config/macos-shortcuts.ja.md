---
description: macOS Shortcuts が Ghostty を制御することを許可
platform: macos
default: ask
---

# macos-shortcuts

**Language:** [English](../../en/config/macos-shortcuts.en.md) | 日本語

## 説明

macOS Shortcuts が Ghostty を制御することを許可するかどうか。

Ghostty は、Shortcuts が Ghostty を制御および対話できるようにする多くのアクションを公開しています。これには、新しいターミナルの作成、ターミナルへのテキスト送信、コマンド実行、任意のキーバインドアクションの呼び出しなどが含まれます。

これは強力な機能ですが、悪意のあるショートカットがインストールされて実行される場合、セキュリティリスクになる可能性があります。したがって、この設定はこの機能を無効にできます。

有効な値は：

- `ask` - ユーザーに許可を求めます。Ghostty はこの選択を記憶し、二度と尋ねません。これはマイク アクセス、カメラ アクセスなど、他の macOS 権限と同様です。
- `allow` - Shortcuts に尋ねずに Ghostty を制御させます。
- `deny` - Shortcuts が Ghostty を制御することを拒否します。

利用可能: 1.2.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-shortcuts.ja.md
# macOS Shortcuts が Ghostty を制御することを許可 (default: ask)
macos-shortcuts = ask
```
