---
description: Fail Ghostty startup if cgroup initialization fails
platform: linux
default: false
---

# linux-cgroup-hard-fail

**Language:** English | [日本語](../../ja/config/linux-cgroup-hard-fail.ja.md)

## Description

If this is false, then any cgroup initialization (for linux-cgroup) will be allowed to fail and the failure is ignored. This is useful if you view cgroup isolation as a "nice to have" and not a critical resource management feature, because Ghostty startup will not fail if cgroup APIs fail.

If this is true, then any cgroup initialization failure will cause Ghostty to exit or new surfaces to not be created.

Note: This currently only affects cgroup initialization. Subprocesses must always be able to move themselves into an isolated cgroup.

## Default

```conf
# https://ghostty.org/docs/config/reference#linux-cgroup-hard-fail
# Fail Ghostty startup if cgroup initialization fails (default: false)
linux-cgroup-hard-fail = false
```

## Related

- [`linux-cgroup`](linux-cgroup.en.md)
- [`linux-cgroup-memory-limit`](linux-cgroup-memory-limit.en.md)
- [`linux-cgroup-processes-limit`](linux-cgroup-processes-limit.en.md)
