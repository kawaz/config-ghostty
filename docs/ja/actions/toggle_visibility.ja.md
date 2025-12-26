---
description: すべてのウィンドウを表示または非表示にする
platform: macos
default: N/A
---

# toggle_visibility

**Language:** [English](../../en/actions/toggle_visibility.en.md) | 日本語

## 説明

すべてのウィンドウを表示または非表示にします。すべてのウィンドウが表示されるようになった場合、Ghostty がフォーカスされていることも確認します。すべてのウィンドウを非表示にすると、フォーカスは OS によって決定される次のアプリケーションに渡されます。

注意: フォーカスされたサーフェスが全画面の場合、このメソッドは何もしません。

macOS でのみ実装されています。

## 使い方

```conf
keybind = cmd+shift+h=toggle_visibility
```
