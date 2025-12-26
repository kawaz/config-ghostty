---
description: Send CSI sequence to terminal
platform: all
default: ""
---

# csi

**Language:** English | [日本語](../../ja/actions/csi.ja.md)

## Description

Send a CSI sequence.

The value should be the CSI sequence without the CSI header (`ESC [` or `\x1b[`).

For example, `csi:0m` can be sent to reset all styles of the current text.

## Usage

```
csi:<sequence>
```
