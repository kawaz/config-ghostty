# linux-cgroup

**Language:** English | [日本語](../../ja/config/linux-cgroup.ja.md)

## Description

Put every surface (tab, split, window) into a dedicated Linux cgroup.

This makes it so that resource management can be done on a per-surface granularity. For example, if a shell program is using too much memory, only that shell will be killed by the oom monitor instead of the entire Ghostty process. Similarly, if a shell program is using too much CPU, only that surface will be CPU-throttled.

This will cause startup times to be slower (a hundred milliseconds or so), so the default value is "single-instance." In single-instance mode, only one instance of Ghostty is running (see gtk-single-instance) so the startup time is a one-time cost. Additionally, single instance Ghostty is much more likely to have many windows, tabs, etc. so cgroup isolation is a big benefit.

This feature requires systemd. If systemd is unavailable, cgroup initialization will fail. By default, this will not prevent Ghostty from working (see linux-cgroup-hard-fail).

Valid values are:

- `never` - Never use cgroups.
- `always` - Always use cgroups.
- `single-instance` - Enable cgroups only for Ghostty instances launched as single-instance applications (see gtk-single-instance).

## Default

```conf
# https://ghostty.org/docs/config/reference#linux-cgroup
# Linux cgroup resource isolation (default: never)
linux-cgroup = never
```

## Related

- [`linux-cgroup-hard-fail`](linux-cgroup-hard-fail.en.md)
- [`linux-cgroup-processes-limit`](linux-cgroup-processes-limit.en.md)
- [`gtk-single-instance`](gtk-single-instance.en.md)
