---
description: Enable URL detection and opening
platform: all
default: true
---

# link-url

**Language:** English | [日本語](../../ja/config/link-url.ja.md)

## Description

Match a regular expression against the terminal text and associate clicking it with an action. This can be used to match URLs, file paths, etc. Actions can be opening using the system opener (e.g. `open` or `xdg-open`) or executing any arbitrary binding action.

Links that are configured earlier take precedence over links that are configured later.

A default link that matches a URL and opens it in the system opener always exists. This can be disabled using `link-url`.

Enable URL matching. URLs are matched on hover with control (Linux) or command (macOS) pressed and open using the default system application for the linked URL.

The URL matcher is always lowest priority of any configured links (see `link`). If you want to customize URL matching, use `link` and disable this.

## Default

```conf
# https://ghostty.org/docs/config/reference#link-url
# Enable URL detection and opening (default: true)
link-url = true
```
