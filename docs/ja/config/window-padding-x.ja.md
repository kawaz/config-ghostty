---
description: ターミナルセルとウィンドウ境界の水平パディング
platform: all
default: 2
---

# window-padding-x

**Language:** [English](../../en/config/window-padding-x.en.md) | 日本語

## 説明

水平ウィンドウパディング。これはターミナルセルと左右のウィンドウ境界の間にパディングを適用します。値はポイント単位で、画面 DPI に応じて適切にスケールされます。

この値が大きすぎると、パディングによってグリッドが完全に圧迫されるため、画面は何もレンダリングしません。ユーザーとして合理的な値を選択するのはあなた次第です。不合理な値を選択すると、ログに警告が表示されます。

実行時にこの設定を変更すると、新しいターミナルにのみ影響します。つまり、新しいウィンドウ、タブなどです。

異なる左右のパディングを設定するには、コンマで区切られた 2 つの数値を指定します。たとえば、`window-padding-x = 2,4` は左パディングを 2、右パディングを 4 に設定します。両方のパディングを同じ値に設定する場合は、単一の値を使用できます。たとえば、`window-padding-x = 2` は両方のパディングを 2 に設定します。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-padding-x.ja.md
# 水平パディング（左右） (default: 2)
window-padding-x = 2
```

## 関連

- [window-padding-y](window-padding-y.ja.md)
- [window-padding-balance](window-padding-balance.ja.md)
- [window-padding-color](window-padding-color.ja.md)
