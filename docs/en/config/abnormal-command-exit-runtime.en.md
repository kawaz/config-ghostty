---
description: Threshold for abnormal process exit detection
platform: all
default: 250
---

# abnormal-command-exit-runtime

**Language:** English | [日本語](../../ja/config/abnormal-command-exit-runtime.ja.md)

## Description

The number of milliseconds of runtime below which we consider a process exit to be abnormal. This is used to show an error message when the process exits too quickly.

On Linux, this must be paired with a non-zero exit code. On macOS, we allow any exit code because of the way shell processes are launched via the login command.

## Default

```conf
# https://ghostty.org/docs/config/reference#abnormal-command-exit-runtime
# Threshold for abnormal process exit detection (default: 250)
abnormal-command-exit-runtime = 250
```
