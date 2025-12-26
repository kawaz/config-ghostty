---
description: macOS Option キーを Alt キーとして扱う
platform: macos
default: ""
---

# macos-option-as-alt

**Language:** [English](../../en/config/macos-option-as-alt.en.md) | 日本語

## 説明

macOS には個別の "alt" キーはなく、代わりに "option" キーがあり、これはわずかに異なる動作をします。macOS では、デフォルトで、option キー + 文字を押すと、Unicode 文字が生成される場合があります。例えば、US 標準レイアウトでは option-b は "∫" を生成します。ターミナル プログラムまたはシェルのキーバインディングに対して "option" を "alt" キーとして使用したい場合は、これは望ましくないでしょう。

この設定を使用すると、option が alt として扱われるように動作を変更できます。

デフォルトの動作（未設定）は、アクティブなキーボード レイアウトによって異なります。キーボード レイアウトが以下にリストされているキーボード レイアウトの 1 つである場合、デフォルト値は "true" です。それ以外の場合、デフォルト値は "false" です。デフォルト値が "true" であるキーボード レイアウトは：

- U.S. Standard
- U.S. International

*Option* シーケンスが印刷可能な文字を生成しない場合、この設定に関わらず *Alt* として扱われることに注意してください。（例：`alt+ctrl+a`）。

設定できる明示的な値：

`true` の場合、*Option* キーは *Alt* として扱われます。これにより、*Alt* を期待するターミナル シーケンスが正しく機能しますが、*Alt* キー経由で使用する場合、macOS 上の Unicode 入力シーケンスが破損します。

これを `false` に設定して、macOS *Alt* キー unicode シーケンスを復元できますが、*Alt* を期待するターミナル シーケンスが破損します。

`left` または `right` の値は、左または右の *Option* キーについてこれを有効にします。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/macos-option-as-alt.ja.md
# macOS Option キーを Alt キーとして扱う (default: "")
macos-option-as-alt =
```
