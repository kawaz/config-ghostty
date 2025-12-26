---
description: フォーカスが移動するとクイックターミナルを自動的に非表示
platform: all
default: "true"
---

# quick-terminal-autohide

**言語:** [English](../../en/config/quick-terminal-autohide.en.md) | 日本語

## 説明

フォーカスが別のウィンドウにシフトするときに、クイックターミナルを自動的に非表示にします。フォーカスが失われてもクイックターミナルを開いたままにするには、false に設定します。

macOS ではデフォルトで true で、Linux/BSD ではデフォルトで false です。これは、Linux 上のグローバルショートカットはシステム構成が必要であり、macOS よりも大幅にアクセスしやすくないため、ユーザーがタスクを完了するまでクイックターミナルを開いたままにすることがより望ましいことを意味しています。このデフォルトは今後変更される可能性があります。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#quick-terminal-autohide
# フォーカスが移動するとクイックターミナルを自動的に非表示 (default: true on macOS, false on Linux)
quick-terminal-autohide = true
```
