# linux-cgroup-processes-limit

**言語:** [English](../../en/config/linux-cgroup-processes-limit.en.md) | 日本語

## 説明

個々のターミナルプロセス（タブ、分割、ウィンドウなど）のプロセス制限数。これが設定されていない場合、制限は設定されません。

これはプロセス数コントローラの "pids.max" 設定を設定することに注意してください。これはハード制限です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/linux-cgroup-processes-limit.ja.md
# 個々のターミナルのプロセス制限 (default: unset)
linux-cgroup-processes-limit =
```

## 関連設定

- [`linux-cgroup`](linux-cgroup.ja.md)
- [`linux-cgroup-hard-fail`](linux-cgroup-hard-fail.ja.md)
