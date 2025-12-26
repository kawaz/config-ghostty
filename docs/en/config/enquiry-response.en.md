---
description: String to send when ENQ control character is received
platform: all
default:
---

# enquiry-response

**Language:** English | [日本語](../../ja/config/enquiry-response.ja.md)

## Description

String to send when we receive `ENQ` (`0x05`) from the command that we are running. Defaults to an empty string if not set.

## Default

```conf
# https://ghostty.org/docs/config/reference#enquiry-response
# String to send when ENQ control character is received (default: )
enquiry-response =
```
