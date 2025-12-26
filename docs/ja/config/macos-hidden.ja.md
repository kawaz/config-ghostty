---
description: macOS アプリアイコンを dock とアプリスイッチャーで非表示
platform: macos
default: never
---

# macos-hidden

**言語:** [English](../../en/config/macos-hidden.en.md) | 日本語

## 説明

true の場合、dock とアプリスイッチャーの macOS アイコンは非表示になります。これは主にクイックターミナルモードを使用している人を対象としています。

これを true に設定すると、キーボードレイアウトの変更が自動的に行われなくなることに注意してください。

macOS アプリが dock とアプリスイッチャーから除外されるかどうかを制御します。これは「hidden」状態です。これは主にクイックターミナルモードを使用している人を対象としていますが、あらゆるユースケースの一般的な設定です。

利用可能な値：

- `never` - macOS アプリは決して非表示になりません。
- `always` - macOS アプリは常に非表示です。

注：macOS アプリケーションが非表示の場合、キーボードレイアウトの変更は自動的に行われなくなります。これは macOS の制限です。

利用可能な場合：1.2.0

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-hidden
# macOS アプリアイコンを dock とアプリスイッチャーで非表示 (default: never)
macos-hidden = never
```

## 関連設定

- [`quick-terminal-position`](quick-terminal-position.ja.md)
- [`quick-terminal-autohide`](quick-terminal-autohide.ja.md)
