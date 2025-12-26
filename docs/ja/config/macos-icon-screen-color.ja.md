# macos-icon-screen-color

**言語:** [English](../../en/config/macos-icon-screen-color.en.md) | 日本語

## 説明

macOS アプリアイコンの画面の色。

スクリーンはリニアグラデーションなため、グラデーションを構成する複数の色を指定できます。最大 64 個のカンマ区切りの色を 16 進数（#RRGGBB または RRGGBB）または名前付き X11 色として指定できます。最初の色はグラデーションの下で、最後の色はグラデーションの上です。

注: `macos-icon` が `custom-style` に設定されている場合、この設定が必要です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-icon-screen-color.ja.md
# macOS アプリアイコンのスクリーングラデーション (default: unset)
macos-icon-screen-color =
```

## プラットフォーム

macOS のみ

## 関連設定

- [`macos-icon`](macos-icon.ja.md)
- [`macos-icon-frame`](macos-icon-frame.ja.md)
