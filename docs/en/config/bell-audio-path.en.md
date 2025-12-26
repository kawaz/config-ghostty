---
description: Path to audio file for bell notification
platform: linux
default:
---

# bell-audio-path

**Language:** English | [日本語](../../ja/config/bell-audio-path.ja.md)

## Description

If `audio` is an enabled bell feature, this is a path to an audio file. If the path is not absolute, it is considered relative to the directory of the configuration file that it is referenced from, or from the current working directory if this is used as a CLI flag. The path may be prefixed with `~/` to reference the user's home directory. (GTK only)

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#bell-audio-path
# Path to audio file for bell notification (default: )
bell-audio-path =
```
