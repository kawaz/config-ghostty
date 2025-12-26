---
description: 起動時にデフォルト設定ファイルパスをロード
platform: all
default: "true"
---

# config-default-files

**言語:** [English](../../en/config/config-default-files.en.md) | 日本語

## 説明

これが true の場合、デフォルト設定ファイル パスがロードされます。デフォルト設定ファイル パスは現在のところ XDG config path（$XDG_CONFIG_HOME/ghostty/config）のみです。

これが false の場合、デフォルト設定パスはロードされません。これは、外部効果を最小化する方法で CLI から Ghostty を使用することを直接対象としています。

これは CLI のみの設定です。これを設定ファイルに設定しても効果はありません。エラーではありませんが、何もしません。この設定は CLI 引数を介してのみ設定できます。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#config-default-files
# 起動時にデフォルト設定ファイルパスをロード (default: true)
config-default-files = true
```
