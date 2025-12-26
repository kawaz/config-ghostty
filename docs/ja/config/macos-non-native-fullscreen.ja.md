---
description: macOS で非ネイティブフルスクリーンを使用する
platform: macos
default: false
---

# macos-non-native-fullscreen

**言語:** [English](../../en/config/macos-non-native-fullscreen.en.md) | 日本語

## 説明

false 以外の場合、macOS のフルスクリーンモードはネイティブフルスクリーンを使用せず、アニメーションなしでウィンドウをフルスクリーンにし、新しいスペースを使用する。アニメーションを使用しないため、ネイティブフルスクリーンモードより高速。

重要：このモードではタブは機能しません。非ネイティブフルスクリーンはタイトルバーを削除し、macOS ネイティブタブはタイトルバーが必要。タブを使用する場合、このモードを使用しないでください。

タブ付きウィンドウをフルスクリーンにすると、現在フォーカスされているタブがフルスクリーンになり、その他はバックグラウンドの別ウィンドウに残される。command+tilde のような通常のウィンドウ切り替えキーバインディングを使用してそのウィンドウに切り替えることができる。フルスクリーンを終了すると、ウィンドウは以前のタブ状態に戻る。

許可可能な値：

- `true` - macOS 非ネイティブフルスクリーンを使用、メニューバーを非表示
- `false` - ネイティブ macOS フルスクリーンを使用
- `visible-menu` - macOS 非ネイティブフルスクリーンを使用、メニューバーを表示
- `padded-notch` - macOS 非ネイティブフルスクリーンを使用、メニューバーを非表示にするが、ウィンドウが該当デバイスのノッチで覆われないようにする。ノッチの周辺領域は現在透明なままですが、将来的にはウィンドウの背景色で埋めるかもしれません。

実行時にこのオプションを変更することは機能しますが、次回ウィンドウがフルスクリーンになるときにのみ適用される。ウィンドウが既にフルスクリーンの場合、フルスクリーンが終了されるまで以前の設定が保持される。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-non-native-fullscreen
# macOS で非ネイティブフルスクリーンを使用する (デフォルト: false)
macos-non-native-fullscreen = false
```

## 関連設定

- [`fullscreen`](fullscreen.ja.md)
- [`toggle_fullscreen`](../actions/toggle_fullscreen.ja.md)
