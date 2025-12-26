---
description: Release channel for auto-updates
platform: macos
default: (matches current version)
---

# auto-update-channel

**Language:** English | [日本語](../../ja/config/auto-update-channel.ja.md)

## Description

The release channel to use for auto-updates.

The default value of this matches the release channel of the currently running Ghostty version. If you download a pre-release version of Ghostty then this will be set to `tip` and you will receive pre-release updates. If you download a stable version of Ghostty then this will be set to `stable` and you will receive stable updates.

Valid values are:

* `stable` - Stable, tagged releases such as "1.0.0".
* `tip` - Pre-release versions generated from each commit to the main branch. This is the version that was in use during private beta testing by thousands of people. It is generally stable but will likely have more bugs than the stable channel.

Changing this configuration requires a full restart of Ghostty to take effect.

This only works on macOS since only macOS has an auto-update feature.

## Default

```conf
# https://ghostty.org/docs/config/reference#auto-update-channel
# Release channel for auto-updates (default: matches current version)
auto-update-channel =
```

## Related

- [auto-update](auto-update.en.md)
