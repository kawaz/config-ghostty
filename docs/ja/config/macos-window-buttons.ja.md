# macos-window-buttons

**言語:** [English](../../en/config/macos-window-buttons.en.md) | 日本語

## 説明

macOS タイトルバーのウィンドウボタンが表示されるかどうか。ウィンドウボタンは、ほとんどの macOS アプリの左上隅にあるカラフルなボタン（トラフィックライトとも呼ばれます）で、ウィンドウを閉じたり、最小化したり、ズームしたりすることができます。

`window-decoration = false` または `macos-titlebar-style = hidden` の場合、この設定は効果がありません。ウィンドウボタンはこれらのモードでは常に非表示だからです。

有効な値は:

- `visible` - ウィンドウボタンを表示します。
- `hidden` - ウィンドウボタンを非表示にします。

デフォルト値は `visible` です。

実行時にこのオプションを変更すると、新しいウィンドウにのみ適用されます。

利用可能: 1.2.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-window-buttons.ja.md
# macOS ウィンドウボタンの可視性 (default: visible)
macos-window-buttons = visible
```

## プラットフォーム

macOS のみ

## 関連設定

- [`window-decoration`](window-decoration.ja.md)
- [`macos-titlebar-style`](macos-titlebar-style.ja.md)
