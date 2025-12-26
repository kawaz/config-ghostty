# reset

**Language:** English | [日本語](../../ja/actions/reset.ja.md)

## Description

Reset the terminal.

This can fix a lot of issues when a running program puts the terminal into a broken state, equivalent to running the `reset` command.

If you do this while in a TUI program such as vim, this may break the program. If you do this while in a shell, you may have to press enter after to get a new prompt.

## Usage

This action is invoked without arguments:

```conf
# https://ghostty.org/docs/config/reference#reset
# Reset the terminal
keybind ctrl+alt+r = reset
```
