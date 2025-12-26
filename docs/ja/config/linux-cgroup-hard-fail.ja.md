---
description: cgroup 初期化が失敗した場合 Ghostty の起動に失敗
platform: linux
default: false
---

# linux-cgroup-hard-fail

**言語:** [English](../../en/config/linux-cgroup-hard-fail.en.md) | 日本語

## 説明

これが false の場合、cgroup 初期化（linux-cgroup の場合）が失敗することが許可され、失敗は無視されます。cgroup の分離を「持っていると良い」と見て、リソース管理機能が重要ではない場合に便利です。cgroup API が失敗しても Ghostty の起動は失敗しません。

これが true の場合、cgroup 初期化の失敗により、Ghostty が終了するか、新しいサーフェスが作成されません。

注：これは現在、cgroup 初期化にのみ影響します。サブプロセスは常に分離された cgroup に自分自身を移動できる必要があります。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#linux-cgroup-hard-fail
# cgroup 初期化が失敗した場合 Ghostty の起動に失敗 (default: false)
linux-cgroup-hard-fail = false
```

## 関連設定

- [`linux-cgroup`](linux-cgroup.ja.md)
- [`linux-cgroup-memory-limit`](linux-cgroup-memory-limit.ja.md)
- [`linux-cgroup-processes-limit`](linux-cgroup-processes-limit.ja.md)
