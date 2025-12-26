---
description: Memory limit for terminal processes
platform: linux
default: ""
---

# linux-cgroup-memory-limit

**Language:** English | [日本語](../../ja/config/linux-cgroup-memory-limit.ja.md)

## Description

Memory limit for any individual terminal process (tab, split, window, etc.) in bytes. If this is unset then no memory limit will be set.

Note that this sets the "memory.high" configuration for the memory controller, which is a soft limit. You should configure something like systemd-oom to handle killing processes that have too much memory pressure.

## Default

```conf
# https://ghostty.org/docs/config/reference#linux-cgroup-memory-limit
# Memory limit for terminal processes (default: "")
linux-cgroup-memory-limit =
```
