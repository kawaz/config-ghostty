---
description: 最初のターミナルサーフェスで実行するコマンド
platform: all
default: (なし)
---

# initial-command

**言語:** [English](../../en/config/initial-command.en.md) | 日本語

## 説明

これは「command」と同じですが、Ghostty の起動時に作成される最初のターミナルサーフェスにのみ適用される。その後のターミナルサーフェスは [`command`](command.ja.md) 設定を使用する。

最初のターミナルサーフェスが作成 (または閉じられた) 後、この初期コマンドを自動的に再度実行する方法はない。そのため、実行時にこれを設定することは機能しますが、これまでに作成された最初のサーフェスの場合にのみ次のターミナルサーフェスに影響を与える。

`ghostty` CLI を使用している場合、引数を直接設定するためのショートカットもある：`-e` フラグを使用できる。例えば：`ghostty -e fish --with --custom --args`。`-e` フラグは他のいくつかの動作も自動的に強制する：

- シェル展開を無効にする。入力がすでに上流 (例：`ghostty -e` コマンドを入力するシェル) によってシェル展開されていると予想されるため。
- `gtk-single-instance=false` - これにより、新しいインスタンスが起動され、CLI 引数が尊重される。
- `quit-after-last-window-closed=true` - これにより、Ghostty プロセスはコマンドが終了したときに終了する。さらに、`quit-after-last-window-closed-delay` は未設定。
- `shell-integration=detect` (存在しない場合は除く) - これはコマンドの環境へのシェル統合の強制的な注入を防ぐ。`-e` を使用した場合、シェルを実行している可能性は低く、シェル統合を強制すると問題が発生する可能性が高い (例えば、シェルにコマンドをラップして env vars を設定するなど)。これは予期しない動作を防ぐための安全策。`-e` で実行されたコマンドでシェル統合を実行したい場合は、バイナリに適切な名前を付けるか、シェル統合スクリプトを手動でソースする必要がある。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#initial-command
# 最初のターミナルサーフェスで実行するコマンド (デフォルト: (なし))
initial-command =
```

## 関連設定

- [`command`](command.ja.md)
