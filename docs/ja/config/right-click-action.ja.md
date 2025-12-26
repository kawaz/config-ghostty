# right-click-action

**言語:** [English](../../en/config/right-click-action.en.md) | 日本語

## 説明

ユーザーがターミナルサーフェスを右クリックときに実行するアクション。

有効な値:
- `context-menu` - コンテキストメニューを表示します。
- `paste` - クリップボードの内容を貼り付けます。
- `copy` - 選択されたテキストをクリップボードにコピーします。
- `copy-or-paste` - 選択がある場合、選択されたテキストをクリップボードにコピーします。それ以外の場合は、クリップボードの内容を貼り付けます。
- `ignore` - 何もしません。右クリックを無視します。

デフォルト値は `context-menu` です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/right-click-action.ja.md
# 右クリック時のアクション (default: context-menu)
right-click-action = context-menu
```
