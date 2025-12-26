---
description: The command to run as the terminal shell
platform: all
default:
---

# command

**Language:** English | [日本語](../../ja/config/command.ja.md)

## Description

The command to run, usually a shell. If this is not an absolute path, it'll be looked up in the `PATH`. If this is not set, a default will be looked up from your system. The rules for the default lookup are:

- `SHELL` environment variable
- `passwd` entry (user information)

This can contain additional arguments to run the command with. If additional arguments are provided, the command will be executed using `/bin/sh -c` to offload shell argument expansion.

To avoid shell expansion altogether, prefix the command with `direct:`, e.g. `direct:nvim foo`. This will avoid the roundtrip to `/bin/sh` but will also not support any shell parsing such as arguments with spaces, filepaths with `~`, globs, etc. (Available since: 1.2.0)

You can also explicitly prefix the command with `shell:` to always wrap the command in a shell. This can be used to ensure our heuristics to choose the right mode are not used in case they are wrong. (Available since: 1.2.0)

This command will be used for all new terminal surfaces, i.e. new windows, tabs, etc. If you want to run a command only for the first terminal surface created when Ghostty starts, use the `initial-command` configuration.

Ghostty supports the common `-e` flag for executing a command with arguments. For example, `ghostty -e fish --with --custom --args`. This flag sets the `initial-command` configuration, see that for more information.

## Default

```conf
# https://ghostty.org/docs/config/reference#command
# The command to run as the terminal shell (default: as described above)
command =
```
