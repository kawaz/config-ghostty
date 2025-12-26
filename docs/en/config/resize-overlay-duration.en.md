---
description: Duration of resize overlay display
platform: all
default: 750ms
---

# resize-overlay-duration

**Language:** English | [日本語](../../ja/config/resize-overlay-duration.ja.md)

## Description

If resize overlays are enabled, this controls how long the overlay is visible on the screen before it is hidden. The default is 3/4 of a second or 750 ms.

The duration is specified as a series of numbers followed by time units. Whitespace is allowed between numbers and units. Each number and unit will be added together to form the total duration.

The allowed time units are as follows:

- `y` - 365 SI days, or 8760 hours, or 31536000 seconds. No adjustments are made for leap years or leap seconds.
- `d` - one SI day, or 86400 seconds.
- `h` - one hour, or 3600 seconds.
- `m` - one minute, or 60 seconds.
- `s` - one second.
- `ms` - one millisecond, or 0.001 second.
- `us` or `µs` - one microsecond, or 0.000001 second.
- `ns` - one nanosecond, or 0.000000001 second.

Examples:
- `1h30m`
- `45s`

Units can be repeated and will be added together. This means that `1h1h` is equivalent to `2h`. This is confusing and should be avoided.
A future update may disallow this.

The maximum value is `584y 49w 23h 34m 33s 709ms 551µs 615ns`. Any value larger than this will be clamped to the maximum value.

Available since 1.0.0

## Default

```conf
# https://ghostty.org/docs/config/reference#resize-overlay-duration
# Duration of resize overlay display (default: 750ms)
resize-overlay-duration = 750ms
```
