---
description: 起動されたコマンド用の追加環境変数
platform: all
default:
---

# env

**言語:** [English](../../en/config/env.en.md) | 日本語

## 説明

ターミナル サーフェスで起動されたコマンドに渡す追加の環境変数。形式は `env=KEY=VALUE` です。

```
env = foo=bar
env = bar=baz
```

`env` を空の文字列に設定すると、マップ全体がデフォルト（空）にリセットされます。

```
env =
```

キーを空の文字列に設定すると、その特定のキーと対応する値がマップから削除されます。

```
env = foo=bar
env = foo=
```

の結果、`foo` が起動されたコマンドに渡されません。

キーを複数回設定すると、前のエントリが上書きされます。

```
env = foo=bar
env = foo=baz
```

の結果、`foo=baz` が起動されたコマンドに渡されます。

これらの環境変数は、Ghostty で設定されている既存の環境変数をオーバーライドします。例えば、`GHOSTTY_RESOURCES_DIR` を設定した場合、ここで設定した値は Ghostty が通常自動的に注入する値をオーバーライドします。

これらの環境変数は、ブラウザで URL を開くために使用される `open` または `xdg-open` など、Ghostty が他の目的で実行するコマンドには渡されません。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/env.ja.md
# 起動されたコマンド用の追加環境変数 (default: )
env =
```
