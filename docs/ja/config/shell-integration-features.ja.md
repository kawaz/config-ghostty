---
description: シェル統合で有効にする機能
platform: all
default: "cursor,no-sudo,title,no-ssh-env,no-ssh-terminfo,path"
---

# shell-integration-features

**言語:** [English](../../en/config/shell-integration-features.en.md) | 日本語

## 説明

有効にするシェル統合機能を設定します。これらは、shell-integration 経由で自動的に、または手動でロードされるシェル統合が必要です。

これの形式はコンマで区切られた有効にする機能のリストです。機能に `no-` プレフィックスを付けると、それは無効になります。機能を省略すると、そのデフォルト値が使用されます。そのため、必要のない機能を明示的に無効にする必要があります。また、`true` または `false` を使用すると、すべての機能をオン/オフにできます。

例：`cursor`、`no-cursor`、`sudo`、`no-sudo`、`title`、`no-title`

利用可能な機能：

- `cursor` - プロンプトでカーソルを点滅するバーに設定します。

- `sudo` - sudo ラッパーを terminfo を保持するように設定します。

- `title` - シェル統合経由でウィンドウ タイトルを設定します。

- `ssh-env` - SSH 環境変数互換性を有効にします。リモート ホストに接続するときに TERM を `xterm-ghostty` から `xterm-256color` に自動的に変換し、COLORTERM、TERM_PROGRAM、および TERM_PROGRAM_VERSION を伝播します。これらの変数がリモート ホストで受け入れられるかどうかは、変数が sshd_config で許可されているかどうかによって異なります。（1.2.0 以降で利用可能）

- `ssh-terminfo` - リモート ホストへの自動 terminfo インストールを有効にします。それを欠くホストに接続するときに、`infocmp` と `tic` を使用して Ghostty の terminfo エントリをインストールしようとします。`infocmp` をローカルで利用でき、`tic` をリモート ホストで利用可能であることが必要です。terminfo がリモート ホストにインストールされると、繰り返しのインストールを回避するために自動的に「キャッシュ」されます。必要に応じて、`+ssh-cache` CLI アクションを使用して、さまざまな引数を使用してインストール キャッシュを手動で管理できます。（1.2.0 以降で利用可能）

- `path` - Ghostty のバイナリ ディレクトリを PATH に追加します。これにより、シェル init スクリプトが PATH をリセットしてもシェルで `ghostty` コマンドが利用可能であることが保証されます。これは、PATH がシステム スクリプトによって上書きされることが多い macOS で特に有用です。ディレクトリは、まだ存在していない場合にのみ追加されます。

SSH 機能は独立して機能し、最適な体験のために組み合わせることができます：`ssh-env` と `ssh-terminfo` の両方が有効になっている場合、Ghostty はリモート ホストに terminfo をインストールし、TERM として `xterm-ghostty` を使用し、terminfo のインストールが失敗した場合は環境変数で `xterm-256color` にフォールバックします。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#shell-integration-features
# シェル統合で有効にする機能 (default: cursor,no-sudo,title,no-ssh-env,no-ssh-terminfo,path)
shell-integration-features = cursor,no-sudo,title,no-ssh-env,no-ssh-terminfo,path
```
