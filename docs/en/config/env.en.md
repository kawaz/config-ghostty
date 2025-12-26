---
description: Extra environment variables for launched commands
platform: all
default:
---

# env

**Language:** English | [日本語](../../ja/config/env.ja.md)

## Description

Extra environment variables to pass to commands launched in a terminal surface. The format is `env=KEY=VALUE`.

```
env = foo=bar
env = bar=baz
```

Setting `env` to an empty string will reset the entire map to default (empty).

```
env =
```

Setting a key to an empty string will remove that particular key and corresponding value from the map.

```
env = foo=bar
env = foo=
```

will result in `foo` not being passed to the launched commands.

Setting a key multiple times will overwrite previous entries.

```
env = foo=bar
env = foo=baz
```

will result in `foo=baz` being passed to the launched commands.

These environment variables will override any existing environment variables set by Ghostty. For example, if you set `GHOSTTY_RESOURCES_DIR` then the value you set here will override the value Ghostty typically automatically injects.

These environment variables _will not_ be passed to commands run by Ghostty for other purposes, like `open` or `xdg-open` used to open URLs in your browser.

## Default

```conf
# https://ghostty.org/docs/config/reference#env
# Extra environment variables for launched commands (default: )
env =
```
