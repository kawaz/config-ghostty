---
description: Multiplier for scrolling distance with mouse wheel
platform: all
default: precision:1,discrete:3
---

# mouse-scroll-multiplier

**Language:** English | [日本語](../../ja/config/mouse-scroll-multiplier.ja.md)

## Description

Multiplier for scrolling distance with the mouse wheel.

A prefix of `precision:` or `discrete:` can be used to set the multiplier only for scrolling with the specific type of devices. These can be comma-separated to set both types of multipliers at the same time, e.g. `precision:0.1,discrete:3`. If no prefix is used, the multiplier applies to all scrolling devices. Specifying a prefix was introduced in Ghostty 1.2.1.

The value will be clamped to [0.01, 10,000]. Both of these are extreme and you're likely to have a bad experience if you set either extreme.

The default value is "3" for discrete devices and "1" for precision devices.

## Default

```conf
# https://ghostty.org/docs/config/reference#mouse-scroll-multiplier
# Multiplier for scrolling distance (default: precision:1,discrete:3)
mouse-scroll-multiplier = precision:1,discrete:3
```

## Related

- [mouse-shift-capture](mouse-shift-capture.en.md)
- [mouse-hide-while-typing](mouse-hide-while-typing.en.md)
