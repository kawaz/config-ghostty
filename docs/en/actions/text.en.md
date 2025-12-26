---
description: Send specified text string
platform: all
default: ""
---

# text

**Language:** English | [日本語](../../ja/actions/text.ja.md)

## Description

Send the specified text.

Uses Zig string literal syntax. This is currently not validated. If the text is invalid (i.e. contains an invalid escape sequence), the error will currently only show up in logs.

## Usage

```
text:<text>
```
