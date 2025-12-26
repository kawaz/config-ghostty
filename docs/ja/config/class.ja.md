---
description: WM_CLASS と DBus 接続用のアプリケーション クラス
platform: linux
default: com.mitchellh.ghostty
---

# class

**言語:** [English](../../en/config/class.en.md) | 日本語

## 説明

アプリケーション クラス値を変更する設定です。

これは、X11 で実行されている場合は `WM_CLASS` X11 プロパティのクラス フィールド、Wayland で実行されている場合は Wayland アプリケーション ID、および Ghostty が DBus に接続するために使用するバス名を制御します。

`gtk-single-instance=true` で実行しているときにこの値を呼び出し間で変更すると、新しい個別のインスタンスが作成されることに注意してください。詳細については、そのオプションを参照してください。

`.desktop` ファイルから Ghostty を起動したり、DBus アクティベーション経由で起動したり、systemd ユーザー サービスで起動したりする際、この値を変更すると破損する可能性があります。システムは起動時に Ghostty がデフォルト `class` を使用して DBus に接続することを想定しています。

クラス名は [GTK ドキュメント](https://docs.gtk.org/gio/type_func.Application.id_is_valid.html)で定義されている要件に従う必要があります。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/class.ja.md
# WM_CLASS と DBus 接続用のアプリケーション クラス (default: com.mitchellh.ghostty)
class =
```

## 関連設定

- [`gtk-single-instance`](gtk-single-instance.ja.md)
