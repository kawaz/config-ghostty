---
description: Enable shell integration auto-injection for enhanced features
platform: all
default: "detect"
---

# shell-integration

**Language:** English | [日本語](../../ja/config/shell-integration.ja.md)

## Description

Whether to enable shell integration auto-injection or not. Shell integration greatly enhances the terminal experience by enabling a number of features:

- Working directory reporting so new tabs, splits inherit the previous terminal's working directory.

- Prompt marking that enables the "jump_to_prompt" keybinding.

- If you're sitting at a prompt, closing a terminal will not ask for confirmation.

- Resizing the window with a complex prompt usually paints much better.

Allowable values are:

- `none` - Do not do any automatic injection. You can still manually configure your shell to enable the integration.

- `detect` - Detect the shell based on the filename.

- `bash`, `elvish`, `fish`, `zsh` - Use this specific shell injection scheme.

The default value is `detect`.

## Default

```conf
# https://ghostty.org/docs/config/reference#shell-integration
# Enable shell integration auto-injection for enhanced features (default: detect)
shell-integration = detect
```
