# fullscreen

**言語:** [English](../../en/config/fullscreen.en.md) | 日本語

## 説明

新しいウィンドウをフルスクリーンで開始します。この設定は新しいウィンドウに適用され、タブ、分割などには適用されません。ただし、この設定は最初のウィンドウだけでなく、すべての新しいウィンドウに適用されます。

macOS では、window-decoration が "false" に設定されている場合、この設定は機能しません。macOS のネイティブフルスクリーンはウィンドウの装飾が設定されていることが必要だからです。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/fullscreen.ja.md
# ウィンドウをフルスクリーンで開始 (default: false)
fullscreen = false
```

## 関連設定

- [`window-decoration`](window-decoration.ja.md)
