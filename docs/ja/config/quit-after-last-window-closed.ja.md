# quit-after-last-window-closed

**言語:** [English](../../en/config/quit-after-last-window-closed.en.md) | 日本語

## 説明

最後のサーフェスが閉じられた後に終了するかどうか。

macOS ではデフォルトで `false` です（macOS アプリケーションの標準的な動作のため）。Linux では、これはデフォルトで `true` です（一般的に期待される動作のため）。

Linux では、これが `true` の場合、Ghostty は最後のウィンドウが閉じられた後、設定可能な時間が経過するまで完全に終了することを遅延させることができます。`quit-after-last-window-closed-delay` のドキュメントを参照してください。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/quit-after-last-window-closed.ja.md
# 最後のウィンドウが閉じられたときに終了 (default: macOS では false、Linux では true)
quit-after-last-window-closed = false
```

## 関連設定

- [`quit-after-last-window-closed-delay`](quit-after-last-window-closed-delay.ja.md)
