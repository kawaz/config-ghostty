---
description: Enable synthesized font styles when unavailable
platform: all
default: bold,italic,bold-italic
---

# font-synthetic-style

**Language:** English | [日本語](../../ja/config/font-synthetic-style.ja.md)

## Description

Control whether Ghostty should synthesize a style if the requested style is not available in the specified font-family.

Ghostty can synthesize bold, italic, and bold italic styles if the font does not have a specific style. For bold, this is done by drawing an outline around the glyph of varying thickness. For italic, this is done by applying a slant to the glyph. For bold italic, both of these are applied.

Synthetic styles are not perfect and will generally not look as good as a font that has the style natively. However, they are useful to provide styled text when the font does not have the style.

Set this to "false" or "true" to disable or enable synthetic styles completely. You can disable specific styles using "no-bold", "no-italic", and "no-bold-italic". You can disable multiple styles by separating them with a comma. For example, "no-bold,no-italic".

Available style keys are: `bold`, `italic`, `bold-italic`.

If synthetic styles are disabled, then the regular style will be used instead if the requested style is not available. If the font has the requested style, then the font will be used as-is since the style is not synthetic.

**Warning:** An easy mistake is to disable `bold` or `italic` but not `bold-italic`. Disabling only `bold` or `italic` will NOT disable either in the `bold-italic` style. If you want to disable `bold-italic`, you must explicitly disable it. You cannot partially disable `bold-italic`.

By default, synthetic styles are enabled.

## Default

```conf
# https://ghostty.org/docs/config/reference#font-synthetic-style
# Enable synthesized font styles when unavailable (default: bold,italic,bold-italic)
font-synthetic-style = bold,italic,bold-italic
```

## Related

- [`font-family`](font-family.en.md)
- [`font-family-bold`](font-family-bold.en.md)
- [`font-family-italic`](font-family-italic.en.md)
- [`font-family-bold-italic`](font-family-bold-italic.en.md)
