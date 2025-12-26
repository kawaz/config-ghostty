---
description: macOS タイトルバーのスタイル (native, transparent, tabs, hidden)
platform: macos
default: transparent
---

# macos-titlebar-style

**言語:** [English](../../en/config/macos-titlebar-style.en.md) | 日本語

## 説明

macOS タイトルバーのスタイル。利用可能な値は「native」、「transparent」、「tabs」、「hidden」です。

「native」スタイルはカスタマイズなしでネイティブ macOS タイトルバーを使用します。タイトルバーはウィンドウテーマと一致します（[`window-theme`](window-theme.ja.md) を参照）。

「transparent」スタイルは「native」と同じですが、タイトルバーは透明でウィンドウの背景色が透けて見えます。これにより、よりシームレスなウィンドウ外観が得られますが、macOS アプリケーションではやや一般的ではなく、すべてのテーマでうまく機能しない可能性があります。

「transparent」スタイルはウィンドウ背景色の動的変更（OSC 11 経由など）にリアルタイムで更新されます。これをより美しくするために、ターミナルがウィンドウの上部と接しているウィンドウ、タブ、またはスプリットである場合にのみこれが行われます。これは、タイトルバーの色が変わっても、最も上にあるすべてのターミナルが一致しないようにするためです。

「tabs」スタイルは、タブバーをタイトルバーに統合する完全にカスタムなタイトルバーです。このタイトルバーは常にターミナルの背景色と一致します。このスタイルにはいくつかの制限があります：macOS 13 以下では、保存されたウィンドウ状態がタブを正しく復元しません。macOS 14 ではこの問題はなく、他の macOS バージョンはテストされていません。

「hidden」スタイルはタイトルバーを非表示にします。ただし、[`window-decoration = false`](window-decoration.ja.md) とは異なり、ウィンドウのフレームを削除したり、角を四角くしたりはしません。実行時にこのオプションを変更すると、既存のウィンドウに悪影響を与える可能性があります。

「hidden」の場合、上部のタイトルバー領域はウィンドウをドラッグするために使用できなくなります。ウィンドウをドラッグするには、フレームのサイズ変更可能な領域で option+click を使用してウィンドウをドラッグできます。これは標準的な macOS の動作であり、Ghostty が有効にするものではありません。

デフォルト値は「transparent」です。これは独断的な選択ですが、最も美しく見え、ほとんどの場合に機能すると思われるものです。

実行時にこのオプションを変更すると、新しいウィンドウにのみ適用されます。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-titlebar-style
# macOS タイトルバーのスタイル (default: transparent)
macos-titlebar-style = transparent
```

## 関連設定

- [`window-theme`](window-theme.ja.md)
- [`window-decoration`](window-decoration.ja.md)
