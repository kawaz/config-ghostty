---
description: ターミナルプロセスのメモリ制限
platform: linux
default: ""
---

# linux-cgroup-memory-limit

**Language:** [English](../../en/config/linux-cgroup-memory-limit.en.md) | 日本語

## 説明

個別のターミナル プロセス（タブ、分割、ウィンドウなど）のメモリ制限（バイト単位）。これが設定されていない場合、メモリ制限は設定されません。

これはメモリ コントローラーの "memory.high" 設定を設定します。これはソフト制限です。メモリ プレッシャーが高いプロセスを強制終了させるために、systemd-oom などのような設定を行う必要があります。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/linux-cgroup-memory-limit.ja.md
# ターミナルプロセスのメモリ制限 (default: "")
linux-cgroup-memory-limit =
```
