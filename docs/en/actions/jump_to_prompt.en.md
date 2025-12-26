---
description: Jump viewport forward or backward by number of prompts
platform: all
default: N/A
---

# jump_to_prompt

**Language:** English | [日本語](../../ja/actions/jump_to_prompt.ja.md)

## Description

Jump the viewport forward or back by the given number of prompts.

Requires shell integration.

Positive values scroll downwards, and negative values scroll upwards.

## Usage

```conf
keybind = ctrl+page_down=jump_to_prompt:1
keybind = ctrl+page_up=jump_to_prompt:-1
```
