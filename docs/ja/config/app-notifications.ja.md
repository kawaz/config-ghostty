---
description: Ghostty のアプリ内通知を制御する
platform: linux
default: clipboard-copy,config-reload
---

# app-notifications

**言語:** [English](../../en/config/app-notifications.en.md) | 日本語

## 説明

Ghostty が表示するアプリ内通知を制御する。

Linux (GTK) では、アプリ内通知はトーストとして表示される。トーストはターミナルウィンドウの上に重ねて表示される。重要ではないが重要な可能性のある情報を表示するために使用される。

可能な通知：

- `clipboard-copy` (デフォルト: true) - テキストがクリップボードにコピーされたときに通知を表示。
- `config-reload` (デフォルト: true) - 設定がリロードされたときに通知を表示。

通知を有効にするには、通知の名前を指定。通知を無効にするには、名前の前に `no-` を付与。例えば、`clipboard-copy` を無効にするには、この設定を `no-clipboard-copy` に設定。有効にするには、`clipboard-copy` に設定。

複数の通知を有効または無効にするには、コンマで区切って指定。

値「false」はすべての通知を無効にします。値「true」はすべての通知を有効にします。

この設定は GTK にのみ適用される。

利用可能時期: 1.1.0

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#app-notifications
# Ghostty のアプリ内通知を制御する (デフォルト: clipboard-copy,config-reload)
app-notifications = clipboard-copy,config-reload
```

## 関連設定

- [`desktop-notifications`](desktop-notifications.ja.md)
