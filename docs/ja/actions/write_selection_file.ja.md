# write_selection_file

**言語:** [English](../../en/actions/write_selection_file.en.md) | 日本語

## 説明

現在選択されているテキストを指定されたアクションで一時ファイルに書き込みます。

利用可能なアクションについては `write_scrollback_file` を参照してください。

テキストが選択されていない場合は何もしません。

## 使用方法

このアクションはアクション引数が必要です：

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/actions/write_selection_file.ja.md
# 選択内容をファイルに書き込む
keybind alt+shift+s = write_selection_file:open
```

## 関連

- [`write_scrollback_file`](write_scrollback_file.ja.md)
