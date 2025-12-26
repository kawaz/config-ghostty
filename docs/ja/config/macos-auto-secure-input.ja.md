---
description: パスワードプロンプトでセキュアインプットを自動有効化
platform: macos
default: true
---

# macos-auto-secure-input

**Language:** [English](../../en/config/macos-auto-secure-input.en.md) | 日本語

## 説明

true の場合、macOS 上の Ghostty はパスワードプロンプトが表示されていることを検出したときに自動的に「セキュアインプット」機能を有効にします。

「セキュアインプット」は macOS のセキュリティ機能で、アプリケーションがキーボードイベントを読み取ることを防ぎます。これは常に `Ghostty > Secure Keyboard Entry` メニュー項目を使って手動で有効にすることができます。

自動パスワードプロンプト検出はヒューリスティックに基づいており、期待どおりに機能しない場合があります。特に、SSH 接続では機能しませんが、機能しない他のケースもあるかもしれません。

この機能を無効にする理由は、正当なアクセシビリティソフトウェア（またはアクセシビリティ API を使用するソフトウェア）を妨害していることがわかった場合です。セキュアインプットはキーボードイベントを読み取ることができないため、どのアプリケーションからでも無効になります。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-auto-secure-input.ja.md
# パスワードプロンプトでセキュアインプットを自動有効化 (default: true)
macos-auto-secure-input = true
```

## 関連

- [macos-secure-input-indication](macos-secure-input-indication.ja.md)
