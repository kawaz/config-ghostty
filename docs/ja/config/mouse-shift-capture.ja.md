---
description: 実行中プログラムがマウスクリックでシフトキーを検出するかどうか
platform: all
default: false
---

# mouse-shift-capture

**Language:** [English](../../en/config/mouse-shift-capture.en.md) | 日本語

## 説明

マウスクリックで押されたシフトキーを検出できるかどうかを決定します。通常、シフトキーはマウス選択を拡張するために使用されます。

`false` のデフォルト値は、シフトキーがマウスプロトコルで送信されず、選択を拡張することを意味します。この値は、`XTSHIFTESCAPE` シーケンスで実行中のプログラムによって条件付きでオーバーライドできます。

値 `true` は、シフトキーがマウスプロトコルで送信されることを意味しますが、実行中のプログラムは `XTSHIFTESCAPE` でこの動作をオーバーライドできます。

値 `never` は `false` と同じですが、実行中のプログラムは `XTSHIFTESCAPE` でこの動作をオーバーライドできません。値 `always` は `true` と同じですが、実行中のプログラムは `XTSHIFTESCAPE` でこの動作をオーバーライドできません。

プログラムがそれ以外の場合でも、シフトがマウス選択を拡張したい場合は、これを `never` に設定します。

有効な値は：

* `true`
* `false`
* `always`
* `never`

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/mouse-shift-capture.ja.md
# シフトキーが選択を拡張するかどうか (default: false)
mouse-shift-capture = false
```

## 関連

- [mouse-hide-while-typing](mouse-hide-while-typing.ja.md)
- [mouse-scroll-multiplier](mouse-scroll-multiplier.ja.md)
