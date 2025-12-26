---
description: スクリーン内容を一時ファイルに書き込む
platform: all
default: ""
---

# write_screen_file

**言語:** [English](../../en/actions/write_screen_file.en.md) | 日本語

## 説明

指定されたアクションで、スクリーンの内容を一時ファイルに書き込みます。

`write_scrollback_file` で可能なアクションについては、`write_scrollback_file` を参照してください。

## 使用方法

```conf
write_screen_file:{action}
```

一般的なアクション：
- `copy` - パスをクリップボードにコピー
- `open` - デフォルトアプリケーションでファイルを開く
- `paste` - パスをターミナルに貼り付け
