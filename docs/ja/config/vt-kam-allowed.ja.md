# vt-kam-allowed

**言語:** [English](../../en/config/vt-kam-allowed.en.md) | 日本語

## 説明

true の場合、ターミナル内で「KAM」モード（ANSI モード 2）の使用を許可します。KAM はアプリケーションのリクエストに応じてキーボード入力を無効にします。これは一般的な機能ではなく、有効にすることはお勧めできません。KAM が必要であることを知っている場合は知っている場合は、これ以上文書化されません。KAM が必要かどうかわからない場合は、必要ありません。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/vt-kam-allowed.ja.md
# KAM モードのキーボード入力制御を許可 (default: false)
vt-kam-allowed = false
```
