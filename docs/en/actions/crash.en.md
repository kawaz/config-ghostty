---
description: Crash Ghostty in desired thread for testing
platform: all
default: N/A
---

# crash

**Language:** English | [日本語](../../ja/actions/crash.ja.md)

## Description

Crash Ghostty in the desired thread for the focused surface.

**WARNING:** This is a hard crash (panic) and data can be lost.

The purpose of this action is to test crash handling. For some users, it may be useful to test crash reporting functionality in order to determine if it all works as expected.

The value determines the crash location:

* `main` - Crash on the main (GUI) thread.
* `io` - Crash on the IO thread for the focused surface.
* `render` - Crash on the render thread for the focused surface.

## Usage

```conf
keybind = ctrl+shift+c=crash:main
```
