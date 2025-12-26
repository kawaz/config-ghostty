---
description: macOS タイトルバーのプロキシアイコンを表示または非表示にする
platform: macos
default: visible
---

# macos-titlebar-proxy-icon

**言語:** [English](../../en/config/macos-titlebar-proxy-icon.en.md) | 日本語

## 説明

macOS タイトルバーのプロキシアイコンが表示されるかどうか。プロキシアイコンは現在の作業ディレクトリを表すフォルダのアイコン。macOS 組み込みの Terminal.app のタイトルバーで非常に明確に見える。

プロキシアイコンはネイティブ macOS タイトルバースタイルでのみ表示される。

有効な値：

- `visible` - プロキシアイコンを表示。
- `hidden` - プロキシアイコンを非表示。

デフォルト値は `visible`。

この設定は実行時に変更でき、現在開いているすべてのウィンドウに影響を与えるが、作業ディレクトリが再度変更された後のみ。したがって、設定変更後に機能させるには、通常は別のディレクトリに `cd` したり、エディタで別のファイルを開いたり、等を行う必要がある。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-titlebar-proxy-icon
# macOS タイトルバーのプロキシアイコンを表示または非表示にする (デフォルト: visible)
macos-titlebar-proxy-icon = visible
```

## 関連設定

- [`macos-titlebar-style`](macos-titlebar-style.ja.md)
