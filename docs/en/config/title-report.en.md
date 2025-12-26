# title-report

**Language:** English | [日本語](../../ja/config/title-report.ja.md)

## Description

Enables or disabled title reporting (CSI 21 t). This escape sequence allows the running program to query the terminal title. This is a common security issue and is disabled by default.

Warning: This can expose sensitive information at best and enable arbitrary code execution at worst (with a maliciously crafted title and a minor amount of user interaction).

Available since: 1.0.1

## Default

```conf
# https://ghostty.org/docs/config/reference#title-report
# Enable title reporting escape sequence (default: false)
title-report = false
```
