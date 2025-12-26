---
description: ウィンドウ装飾の設定を指定する
platform: all
default: auto
---

# window-decoration

**言語:** [English](../../en/config/window-decoration.en.md) | 日本語

## 説明

ウィンドウ装飾の設定を指定します。この設定は「設定」を指定するもので、実際の OS、デスクトップ環境、ウィンドウ マネージャーなどがこの設定をオーバーライドする可能性があります。Ghostty は最善を尽くしてこの設定に従いますが、常に可能とは限りません。

有効な値：

- `none`

  すべてのウィンドウ装飾が無効化されます。タイトルバー、枠線など は表示されません。macOS では、タブも無効化されます（システム側での強制）。

- `auto`

  現在の OS とデスクトップ環境の検出された設定に基づいて、クライアント側またはサーバー側の装飾のいずれかを自動的に使用するかどうかを決定します。通常、このオプションでは Ghostty がデスクトップで最も「ネイティブ」に見えるようになります。

- `client`

  クライアント側の装飾を優先します。

  利用可能なバージョン: 1.1.0

- `server`

  サーバー側の装飾を優先します。これは Linux で GTK を使用する場合のみ関連があります。X11 上、または `org_kde_kwin_server_decoration` プロトコルをサポートするコンポジター上での Wayland です（例：KDE Plasma、ただしほぼすべての非 GNOME デスクトップがこのプロトコルをサポートしています）。

  `server` に設定されているが、環境がサーバー側の装飾をサポートしていない場合は、クライアント側の装飾が代わりに使用されます。

  利用可能なバージョン: 1.1.0

下位互換性と利便性の観点から、この設定はブール値の true と false も受け入れます。`true` に設定されている場合、これは `auto` と同等です。`false` に設定されている場合、これは `none` と同等です。これは、主にクライアント側とサーバー側の装飾を区別しないシステム上で生活するユーザーにとって便利です（例：macOS と Windows）。

"toggle_window_decorations" キーバインド アクションを使用して、実行時にこの設定を切り替えるキーバインディングを作成できます。

**macOS:** タイトルバーを非表示にしつつ、ネイティブなウィンドウ境界線や丸みを帯びた角を保持するには、`macos-titlebar-style = hidden` を代わりに使用してください。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/window-decoration.ja.md
# ウィンドウ装飾の設定を指定する (default: auto)
window-decoration = auto
```
