# linux-cgroup-processes-limit

**Language:** English | [日本語](../../ja/config/linux-cgroup-processes-limit.ja.md)

## Description

Number of processes limit for any individual terminal process (tab, split, window, etc.). If this is unset then no limit will be set.

Note that this sets the "pids.max" configuration for the process number controller, which is a hard limit.

## Default

```conf
# https://ghostty.org/docs/config/reference#linux-cgroup-processes-limit
# Process limit for individual terminal (default: unset)
linux-cgroup-processes-limit =
```

## Related

- [`linux-cgroup`](linux-cgroup.en.md)
- [`linux-cgroup-hard-fail`](linux-cgroup-hard-fail.en.md)
