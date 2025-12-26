---
description: Run animation loop for custom shaders
platform: all
default: "true"
---

# custom-shader-animation

**Language:** English | [日本語](../../ja/config/custom-shader-animation.ja.md)

## Description

If `true` (default), the focused terminal surface will run an animation loop when custom shaders are used. This uses slightly more CPU (generally less than 10%) but allows the shader to animate. This only runs if there are custom shaders and the terminal is focused.

If this is set to `false`, the terminal and custom shader will only render when the terminal is updated. This is more efficient but the shader will not animate.

This can also be set to `always`, which will always run the animation loop regardless of whether the terminal is focused or not. The animation loop will still only run when custom shaders are used. Note that this will use more CPU per terminal surface and can become quite expensive depending on the shader and your terminal usage.

This can be changed at runtime and will affect all open terminals.

## Default

```conf
# https://ghostty.org/docs/config/reference#custom-shader-animation
# Run animation loop for custom shaders (default: true)
custom-shader-animation = true
```

## Related

- [`custom-shader`](custom-shader.en.md)
