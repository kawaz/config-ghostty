---
description: Volume level for bell audio
platform: linux
default: "0.5"
---

# bell-audio-volume

**Language:** English | [日本語](../../ja/config/bell-audio-volume.ja.md)

## Description

If `audio` is an enabled bell feature, this is the volume to play the audio file at (relative to the system volume). This is a floating point number ranging from 0.0 (silence) to 1.0 (as loud as possible). The default is 0.5. (GTK only)

Available since: 1.2.0

## Default

```conf
# https://ghostty.org/docs/config/reference#bell-audio-volume
# Volume level for bell audio (default: 0.5)
bell-audio-volume = 0.5
```
