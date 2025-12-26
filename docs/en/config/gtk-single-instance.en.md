---
description: Run Ghostty GTK application in single-instance mode
platform: linux
default: detect
---

# gtk-single-instance

**Language:** English | [日本語](../../ja/config/gtk-single-instance.ja.md)

## Description

If `true`, the Ghostty GTK application will run in single-instance mode: each new `ghostty` process launched will result in a new window if there is already a running process.

If `false`, each new ghostty process will launch a separate application.

If `detect`, Ghostty will assume true (single instance) unless one of the following scenarios is found:

1. TERM_PROGRAM environment variable is a non-empty value. In this case, we assume Ghostty is being launched from a graphical terminal session and you want a dedicated instance.

2. Any CLI arguments exist. In this case, we assume you are passing custom Ghostty configuration. Single instance mode inherits the configuration from when it was launched, so we must disable single instance to load the new configuration.

If either of these scenarios is producing a false positive, you can set this configuration explicitly to the behavior you want.

The pre-1.2 option `desktop` has been deprecated. Please replace this with `detect`.

The default value is `detect`.

Note that debug builds of Ghostty have a separate single-instance ID so you can test single instance without conflicting with release builds.

## Default

```conf
# https://ghostty.org/docs/config/reference#gtk-single-instance
# Run Ghostty GTK application in single-instance mode (default: detect)
gtk-single-instance = detect
```
