# prompt_surface_title

**Language:** English | [日本語](../../ja/actions/prompt_surface_title.ja.md)

## Description

Change the title of the current focused surface via a pop-up prompt.

This requires libadwaita 1.5 or newer on Linux. The current libadwaita version can be found by running `ghostty +version`.

## Usage

This action is invoked without arguments:

```conf
# https://ghostty.org/docs/config/reference#prompt_surface_title
# Prompt to change surface title
keybind alt+shift+t = prompt_surface_title
```

## Platform

Linux only
