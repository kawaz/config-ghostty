---
description: macOS アプリアイコンの外観をカスタマイズする
platform: macos
default: official
---

# macos-icon

**Language:** [English](../../en/config/macos-icon.en.md) | 日本語

## 説明

macOS アプリアイコンをカスタマイズします。これはドック、アプリケーションスイッチャーなどに表示されるアイコンにのみ影響します。Finder のアイコンには影響しません。なぜなら、署名されたアプリケーションバンドルのハードコードされた値によって制御され、実行時に変更することはできないからです。正確に何が影響されるかについてのより詳しい情報は、Apple の `NSApplication.icon` ドキュメントを参照してください。これはそのAPI を使って設定されます。

有効な値：

* `official` - 公式の Ghostty アイコンを使用します。
* `blueprint`, `chalkboard`, `microchip`, `glass`, `holographic`, `paper`, `retro`, `xray` - アーティストが手作成した公式の Ghostty アイコンのバリアント（AI なし）。
* `custom` - 完全にカスタムなアイコンを使用します。位置は追加の [`macos-custom-icon`](macos-custom-icon.ja.md) 設定を使って指定する必要があります
* `custom-style` - 公式の Ghostty アイコンを使用しますが、カスタムスタイルが様々なレイヤーに適用されます。カスタムスタイルは追加の `macos-icon` プレフィクスが付いた設定を使って指定する必要があります。`macos-icon-ghost-color` と `macos-icon-screen-color` 設定がこのスタイルには必須です。

**警告：** `custom-style` オプションは _実験的_ です。今後、カスタムスタイルのフォーマットが変更される可能性があります。利用可能な正確なレイヤーとカスタマイズオプションをまだ確定中です。

その他の注意事項：

* アップデートダイアログのアイコンは常に公式アイコンです。これは、アップデートダイアログが別のフレームワークで管理されており、多大な努力なしにはカスタマイズできないためです。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-icon.ja.md
# macOS アプリアイコンをカスタマイズ (default: official)
macos-icon = official
```

## 関連

- [macos-custom-icon](macos-custom-icon.ja.md)
- [macos-icon-ghost-color](macos-icon-ghost-color.ja.md)
- [macos-icon-screen-color](macos-icon-screen-color.ja.md)
