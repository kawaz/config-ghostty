# Ghostty設定リファレンス（macOS）

**Language:** [English](../en/index-macos.en.md) | 日本語

**Platform Index:** [すべて](index-all.ja.md) | macOS | [Linux](index-linux.ja.md) | [プラットフォーム固有](index-platform-specific.ja.md)

---

## 設定オプション

### フォント
- [font-family](config/font-family.ja.md) - ターミナルのフォントファミリー
- [font-family-bold](config/font-family-bold.ja.md) - 太字テキストのフォントファミリー
- [font-family-italic](config/font-family-italic.ja.md) - イタリック体テキストのフォントファミリー
- [font-family-bold-italic](config/font-family-bold-italic.ja.md) - 太字イタリック体テキストのフォントファミリー
- [font-size](config/font-size.ja.md) - ターミナルのフォントサイズ（ポイント）
- [font-style](config/font-style.ja.md) - 通常テキストのフォントスタイル
- [font-style-bold](config/font-style-bold.ja.md) - 太字テキストのフォントスタイル
- [font-style-italic](config/font-style-italic.ja.md) - イタリック体テキストのフォントスタイル
- [font-style-bold-italic](config/font-style-bold-italic.ja.md) - 太字イタリック体テキストのフォントスタイル
- [font-variation](config/font-variation.ja.md) - 可変フォントの軸設定
- [font-variation-bold](config/font-variation-bold.ja.md) - 太字用の可変フォント軸設定
- [font-variation-italic](config/font-variation-italic.ja.md) - イタリック体用の可変フォント軸設定
- [font-variation-bold-italic](config/font-variation-bold-italic.ja.md) - 太字イタリック体用の可変フォント軸設定
- [font-synthetic-style](config/font-synthetic-style.ja.md) - 利用不可時に合成フォントスタイルを有効化
- [font-feature](config/font-feature.ja.md) - フォント機能設定を適用
- [font-shaping-break](config/font-shaping-break.ja.md) - テキストレンダリングのフォント整形ブレークポイントを制御
- [font-thicken](config/font-thicken.ja.md) - macOSでフォントを太いストロークで描画
- [font-thicken-strength](config/font-thicken-strength.ja.md) - 有効時のフォント太さの強度
- [font-codepoint-map](config/font-codepoint-map.ja.md) - 特定のUnicodeコードポイントを名前付きフォントにマップ

### カーソル
- [cursor-color](config/cursor-color.ja.md) - ターミナルカーソルの色
- [cursor-text](config/cursor-text.ja.md) - カーソル下のテキストの色
- [cursor-style](config/cursor-style.ja.md) - ターミナルのデフォルトカーソルスタイル
- [cursor-style-blink](config/cursor-style-blink.ja.md) - デフォルトカーソルの点滅状態
- [cursor-opacity](config/cursor-opacity.ja.md) - カーソルの不透明度レベルを制御
- [cursor-click-to-move](config/cursor-click-to-move.ja.md) - Alt/Option+クリックでカーソルを移動可能にする
- [adjust-cursor-height](config/adjust-cursor-height.ja.md) - カーソルの高さをピクセルまたはパーセンテージで調整
- [adjust-cursor-thickness](config/adjust-cursor-thickness.ja.md) - カーソルバーと矩形の太さを調整

### 背景
- [background](config/background.ja.md) - ターミナルウィンドウの背景色
- [background-opacity](config/background-opacity.ja.md) - 背景の不透明度レベルを設定
- [background-opacity-cells](config/background-opacity-cells.ja.md) - 明示的な背景色を持つセルに不透明度を適用
- [background-blur](config/background-blur.ja.md) - 背景ぼかし効果を有効化または無効化
- [background-image](config/background-image.ja.md) - ターミナルの背景画像ファイルパス
- [background-image-opacity](config/background-image-opacity.ja.md) - 背景画像の背景色に対する不透明度
- [background-image-fit](config/background-image-fit.ja.md) - 背景画像をターミナルにフィットするようにスケール
- [background-image-position](config/background-image-position.ja.md) - ターミナル内の背景画像の位置
- [background-image-repeat](config/background-image-repeat.ja.md) - ターミナル領域を埋めるために背景画像を繰り返す
- [alpha-blending](config/alpha-blending.ja.md) - アルファブレンディング演算に使用する色空間

### 色とテーマ
- [foreground](config/foreground.ja.md) - 前景テキスト色
- [bold-color](config/bold-color.ja.md) - ターミナルの太字テキストに使用する色
- [palette](config/palette.ja.md) - 256色ターミナルモードのカラーパレット
- [minimum-contrast](config/minimum-contrast.ja.md) - 前景色と背景色の最小コントラスト比
- [theme](config/theme.ja.md) - ターミナルのカラーテーマを選択
- [selection-background](config/selection-background.ja.md) - テキスト選択の背景色
- [selection-foreground](config/selection-foreground.ja.md) - テキスト選択の前景色
- [faint-opacity](config/faint-opacity.ja.md) - 薄いテキストの不透明度レベルを制御

### ウィンドウサイズと位置
- [window-width](config/window-width.ja.md) - 初期ウィンドウ幅（ターミナルグリッドセル数）
- [window-height](config/window-height.ja.md) - 初期ウィンドウ高さ（ターミナルグリッドセル数）
- [window-position-x](config/window-position-x.ja.md) - 開始ウィンドウX位置（ピクセル）
- [window-position-y](config/window-position-y.ja.md) - 開始ウィンドウY位置（ピクセル）
- [maximize](config/maximize.ja.md) - 新しいウィンドウを最大化状態で開始
- [fullscreen](config/fullscreen.ja.md) - 新しいウィンドウをフルスクリーンモードで開始
- [window-step-resize](config/window-step-resize.ja.md) - ウィンドウをセルサイズの離散的な増分でリサイズ

### ウィンドウ外観
- [window-decoration](config/window-decoration.ja.md) - ウィンドウ装飾の設定
- [window-theme](config/window-theme.ja.md) - ウィンドウテーマの外観
- [window-colorspace](config/window-colorspace.ja.md) - ターミナルカラーを解釈する色空間
- [window-vsync](config/window-vsync.ja.md) - 画面リフレッシュレートとレンダリングを同期
- [window-save-state](config/window-save-state.ja.md) - ウィンドウ状態の保存と復元を有効化
- [title](config/title.ja.md) - ウィンドウに使用するタイトル
- [window-padding-x](config/window-padding-x.ja.md) - ターミナルセルとウィンドウ境界間の水平パディング
- [window-padding-y](config/window-padding-y.ja.md) - ターミナルセルとウィンドウ境界間の垂直パディング
- [window-padding-balance](config/window-padding-balance.ja.md) - 4つのウィンドウエッジ間で余分なパディングをバランス
- [window-padding-color](config/window-padding-color.ja.md) - ウィンドウパディング領域の色
- [window-title-font-family](config/window-title-font-family.ja.md) - ウィンドウとタブタイトルのフォントファミリー

### タブ
- [window-new-tab-position](config/window-new-tab-position.ja.md) - 新規タブの位置

### 分割ペイン
- [unfocused-split-fill](config/unfocused-split-fill.ja.md) - フォーカスされていない分割ペインを暗くする色
- [unfocused-split-opacity](config/unfocused-split-opacity.ja.md) - フォーカスされていない分割ペインの不透明度
- [split-divider-color](config/split-divider-color.ja.md) - 分割区切り線の色

### スクロールバック
- [scrollback-limit](config/scrollback-limit.ja.md) - スクロールバックバッファの最大サイズ（バイト）
- [scroll-to-bottom](config/scroll-to-bottom.ja.md) - 画面を下部にスクロールするタイミング

### クリップボード
- [clipboard-read](config/clipboard-read.ja.md) - ターミナルプログラムのクリップボード読み取りアクセスを制御
- [clipboard-write](config/clipboard-write.ja.md) - ターミナルプログラムのクリップボード書き込みアクセスを制御
- [clipboard-trim-trailing-spaces](config/clipboard-trim-trailing-spaces.ja.md) - クリップボードへのコピー時に末尾の空白を削除
- [clipboard-paste-protection](config/clipboard-paste-protection.ja.md) - 危険なテキストをペーストする前に確認を要求
- [clipboard-paste-bracketed-safe](config/clipboard-paste-bracketed-safe.ja.md) - ブラケット付きペーストを確認なしで安全として扱う
- [copy-on-select](config/copy-on-select.ja.md) - 選択したテキストを自動的にクリップボードにコピー

### 選択
- [selection-clear-on-copy](config/selection-clear-on-copy.ja.md) - クリップボードへのコピー後に選択をクリア
- [selection-clear-on-typing](config/selection-clear-on-typing.ja.md) - 入力時に選択をクリア

### シェルとコマンド
- [command](config/command.ja.md) - ターミナルシェルとして実行するコマンド
- [initial-command](config/initial-command.ja.md) - 最初のターミナルサーフェスで実行するコマンド
- [working-directory](config/working-directory.ja.md) - ターミナルの初期作業ディレクトリ
- [shell-integration](config/shell-integration.ja.md) - 強化機能のためのシェル統合自動注入を有効化
- [shell-integration-features](config/shell-integration-features.ja.md) - シェル統合で有効にするフィーチャー
- [wait-after-command](config/wait-after-command.ja.md) - コマンド終了後にターミナルを開いたままにする
- [abnormal-command-exit-runtime](config/abnormal-command-exit-runtime.ja.md) - 異常なプロセス終了検出の閾値
- [env](config/env.ja.md) - 起動されたコマンド用の追加環境変数
- [term](config/term.ja.md) - TERM環境変数の値

### キーボードと入力
- [keybind](config/keybind.ja.md) - ターミナルアクション用のキーバインディングを設定
- [input](config/input.ja.md) - 起動時にコマンドへ送信する入力データ
- [mouse-shift-capture](config/mouse-shift-capture.ja.md) - マウスクリック時にShiftキーを検出するかどうか
- [mouse-hide-while-typing](config/mouse-hide-while-typing.ja.md) - 入力時にマウスカーソルを即座に非表示
- [mouse-scroll-multiplier](config/mouse-scroll-multiplier.ja.md) - マウスホイール スクロール距離の乗数
- [vt-kam-allowed](config/vt-kam-allowed.ja.md) - KAMモードがアプリケーションからのキーボード入力を無効化可能にする
- [right-click-action](config/right-click-action.ja.md) - ターミナルサーフェス上で右クリック時に実行するアクション
- [focus-follows-mouse](config/focus-follows-mouse.ja.md) - 分割ビューでマウスカーソル下のペインを選択
- [click-repeat-interval](config/click-repeat-interval.ja.md) - リピート検出用のクリック間隔（ミリ秒）

### クイックターミナル
- [quick-terminal-position](config/quick-terminal-position.ja.md) - クイックターミナルウィンドウの位置
- [quick-terminal-autohide](config/quick-terminal-autohide.ja.md) - フォーカス移動時にクイックターミナルを自動非表示
- [quick-terminal-keyboard-interactivity](config/quick-terminal-keyboard-interactivity.ja.md) - クイックターミナルのキーボード相互作用モード
- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.ja.md) - クイックターミナルアニメーション時間
- [quick-terminal-screen](config/quick-terminal-screen.ja.md) - クイックターミナルが表示される画面
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.ja.md) - スペース切り替え時のクイックターミナル動作

### テキストレンダリング
- [adjust-font-baseline](config/adjust-font-baseline.ja.md) - セル下からのテキストベースライン距離を調整
- [adjust-cell-width](config/adjust-cell-width.ja.md) - 文字配置のセル幅を調整
- [adjust-cell-height](config/adjust-cell-height.ja.md) - 文字配置のセル高さを調整
- [adjust-box-thickness](config/adjust-box-thickness.ja.md) - ボックス描画文字の太さを調整
- [adjust-icon-height](config/adjust-icon-height.ja.md) - Nerd フォントアイコン高さを調整
- [adjust-underline-position](config/adjust-underline-position.ja.md) - アンダーラインの垂直位置を調整
- [adjust-underline-thickness](config/adjust-underline-thickness.ja.md) - アンダーラインの太さをピクセルで調整
- [adjust-strikethrough-position](config/adjust-strikethrough-position.ja.md) - セルの上からの取り消し線位置を調整
- [adjust-strikethrough-thickness](config/adjust-strikethrough-thickness.ja.md) - 取り消し線の太さをピクセルまたはパーセンテージで調整
- [adjust-overline-position](config/adjust-overline-position.ja.md) - 上線テキストの垂直位置を調整
- [adjust-overline-thickness](config/adjust-overline-thickness.ja.md) - 上線テキストの太さを調整
- [grapheme-width-method](config/grapheme-width-method.ja.md) - 書記素クラスタセル幅計算方法

### リサイズオーバーレイ
- [resize-overlay](config/resize-overlay.ja.md) - ターミナルリサイズ中にリサイズオーバーレイを表示するタイミング
- [resize-overlay-position](config/resize-overlay-position.ja.md) - ウィンドウリサイズオーバーレイの位置
- [resize-overlay-duration](config/resize-overlay-duration.ja.md) - リサイズオーバーレイ表示時間

### リンクとURL
- [link-url](config/link-url.ja.md) - URLの検出と開く機能を有効化
- [link-previews](config/link-previews.ja.md) - マッチしたURLのプレビューツールチップを表示

### ベルと通知
- [bell-features](config/bell-features.ja.md) - ベル通知機能を設定
- [desktop-notifications](config/desktop-notifications.ja.md) - ターミナルアプリケーションがデスクトップ通知を表示可能にする

### 設定
- [config-file](config/config-file.ja.md) - Ghostty用の追加設定ファイルを読み込む
- [config-default-files](config/config-default-files.ja.md) - 起動時にデフォルト設定ファイルパスを読み込む

### macOS
- [macos-icon](config/macos-icon.ja.md) - macOSアプリアイコンの外観をカスタマイズ
- [macos-icon-frame](config/macos-icon-frame.ja.md) - macOSアプリアイコンフレームのマテリアル仕上げ
- [macos-icon-ghost-color](config/macos-icon-ghost-color.ja.md) - macOSアプリアイコン内のゴーストの色
- [macos-icon-screen-color](config/macos-icon-screen-color.ja.md) - macOSアプリアイコン内のスクリーンのグラデーション色
- [macos-custom-icon](config/macos-custom-icon.ja.md) - カスタムmacOSアプリアイコンファイルへの絶対パス
- [macos-titlebar-style](config/macos-titlebar-style.ja.md) - macOSタイトルバーのスタイル（ネイティブ、透明、タブ、非表示）
- [macos-titlebar-proxy-icon](config/macos-titlebar-proxy-icon.ja.md) - macOSタイトルバーにプロキシアイコンを表示または非表示
- [macos-window-shadow](config/macos-window-shadow.ja.md) - macOSウィンドウシャドウを有効化または無効化
- [macos-window-buttons](config/macos-window-buttons.ja.md) - macOSタイトルバーのウィンドウボタンの可視性
- [macos-non-native-fullscreen](config/macos-non-native-fullscreen.ja.md) - macOSで非ネイティブフルスクリーンを使用
- [macos-option-as-alt](config/macos-option-as-alt.ja.md) - macOS OptionキーをAltキーとして扱う
- [macos-secure-input-indication](config/macos-secure-input-indication.ja.md) - セキュア入力有効時にグラフィカル表示を表示
- [macos-auto-secure-input](config/macos-auto-secure-input.ja.md) - パスワードプロンプトでセキュア入力を自動有効化
- [macos-shortcuts](config/macos-shortcuts.ja.md) - macOS Shortcutsに対してGhosttyを制御可能にする
- [macos-hidden](config/macos-hidden.ja.md) - macOSアプリアイコンをdockとアプリスイッチャーから非表示
- [macos-dock-drop-behavior](config/macos-dock-drop-behavior.ja.md) - Ghostty dockアイコンへのファイルドロップ時の動作
- [auto-update](config/auto-update.ja.md) - Ghosttyの自動更新機能を制御
- [auto-update-channel](config/auto-update-channel.ja.md) - 自動更新の配布チャネル
- [undo-timeout](config/undo-timeout.ja.md) - 元に戻す操作が利用可能である期間

### ターミナル動作
- [title-report](config/title-report.ja.md) - タイトルレポートエスケープシーケンスを有効化または無効化
- [osc-color-report-format](config/osc-color-report-format.ja.md) - OSCシーケンスの色報告フォーマットを設定
- [enquiry-response](config/enquiry-response.ja.md) - ENQ制御文字を受け取った時に送信する文字列
- [image-storage-limit](config/image-storage-limit.ja.md) - ターミナルスクリーンあたりの画像データ最大バイト数
- [confirm-close-surface](config/confirm-close-surface.ja.md) - サーフェスをクローズする前に確認
- [quit-after-last-window-closed](config/quit-after-last-window-closed.ja.md) - 最後のウィンドウがクローズされた時にGhosttyを終了
- [window-inherit-working-directory](config/window-inherit-working-directory.ja.md) - 前のフォーカスウィンドウから作業ディレクトリを継承
- [window-inherit-font-size](config/window-inherit-font-size.ja.md) - 前のフォーカスウィンドウからフォントサイズを継承
- [initial-window](config/initial-window.ja.md) - 起動時に初期ウィンドウを作成するかどうか

### カスタムシェーダー
- [custom-shader](config/custom-shader.ja.md) - カスタムGLSLシェーダーファイルへのパス
- [custom-shader-animation](config/custom-shader-animation.ja.md) - カスタムシェーダー用のアニメーションループを実行

### コマンドパレット
- [command-palette-entry](config/command-palette-entry.ja.md) - コマンドパレット用のカスタムエントリー

## アクション

### クリップボード
- [copy_to_clipboard](actions/copy_to_clipboard.ja.md) - 現在選択されているテキストをクリップボードにコピー
- [paste_from_clipboard](actions/paste_from_clipboard.ja.md) - デフォルトクリップボードの内容をペースト
- [paste_from_selection](actions/paste_from_selection.ja.md) - 選択クリップボードの内容をペースト
- [copy_url_to_clipboard](actions/copy_url_to_clipboard.ja.md) - カーソル下のURLをクリップボードにコピー
- [copy_title_to_clipboard](actions/copy_title_to_clipboard.ja.md) - ターミナルタイトルをクリップボードにコピー

### フォントサイズ
- [increase_font_size](actions/increase_font_size.ja.md) - フォントサイズを指定量増加
- [decrease_font_size](actions/decrease_font_size.ja.md) - フォントサイズを指定ポイント減少
- [reset_font_size](actions/reset_font_size.ja.md) - フォントサイズを設定値にリセット
- [set_font_size](actions/set_font_size.ja.md) - フォントサイズを特定のポイント数に設定

### スクロール
- [scroll_to_top](actions/scroll_to_top.ja.md) - 画面の上部にスクロール
- [scroll_to_bottom](actions/scroll_to_bottom.ja.md) - 画面の下部にスクロール
- [scroll_page_up](actions/scroll_page_up.ja.md) - 画面を1ページ上にスクロール
- [scroll_page_down](actions/scroll_page_down.ja.md) - 画面を1ページ下にスクロール
- [scroll_page_lines](actions/scroll_page_lines.ja.md) - 指定行数だけスクロール
- [scroll_page_fractional](actions/scroll_page_fractional.ja.md) - ページの指定割合だけスクロール
- [scroll_to_selection](actions/scroll_to_selection.ja.md) - 選択されたテキストにスクロール
- [jump_to_prompt](actions/jump_to_prompt.ja.md) - 前後へプロンプト数分ジャンプ

### タブ管理
- [new_tab](actions/new_tab.ja.md) - 新しいタブを開く
- [close_tab](actions/close_tab.ja.md) - 現在のタブまたは他のすべてのタブをクローズ
- [next_tab](actions/next_tab.ja.md) - 次のタブに移動
- [previous_tab](actions/previous_tab.ja.md) - 前のタブに移動
- [goto_tab](actions/goto_tab.ja.md) - インデックス番号で特定のタブに移動
- [last_tab](actions/last_tab.ja.md) - 最後のタブに移動
- [move_tab](actions/move_tab.ja.md) - タブを相対オフセットで移動

### ウィンドウ管理
- [new_window](actions/new_window.ja.md) - 新しいウィンドウを開く
- [close_window](actions/close_window.ja.md) - 現在のウィンドウとすべてのタブと分割をクローズ
- [close_all_windows](actions/close_all_windows.ja.md) - すべてのウィンドウをクローズ（廃止、効果なし）
- [toggle_fullscreen](actions/toggle_fullscreen.ja.md) - 現在のウィンドウをフルスクリーン化または通常化
- [toggle_visibility](actions/toggle_visibility.ja.md) - すべてのウィンドウを表示または非表示
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.ja.md) - ウィンドウを常に前に浮かすようにトグル
- [reset_window_size](actions/reset_window_size.ja.md) - ウィンドウをデフォルトサイズにリセット

### 分割管理
- [new_split](actions/new_split.ja.md) - 指定された方向に新しい分割を作成
- [close_surface](actions/close_surface.ja.md) - 現在のウィンドウ、タブ、または分割をクローズ
- [goto_split](actions/goto_split.ja.md) - 指定された方向の分割にフォーカス
- [resize_split](actions/resize_split.ja.md) - 指定された方向と量で現在の分割をリサイズ
- [equalize_splits](actions/equalize_splits.ja.md) - 現在のウィンドウのすべての分割サイズを均等化
- [toggle_split_zoom](actions/toggle_split_zoom.ja.md) - 現在の分割ペインをズームイン/ズームアウト

### 選択
- [adjust_selection](actions/adjust_selection.ja.md) - 指定方向で現在の選択を調整
- [select_all](actions/select_all.ja.md) - 画面のすべてのテキストを選択

### ターミナル制御
- [reset](actions/reset.ja.md) - ターミナルを初期状態にリセット
- [clear_screen](actions/clear_screen.ja.md) - 画面とすべてのスクロールバック履歴をクリア
- [write_screen_file](actions/write_screen_file.ja.md) - 画面内容を一時ファイルに書き込み
- [write_scrollback_file](actions/write_scrollback_file.ja.md) - ターミナルスクロールバックをファイルに書き込み
- [write_selection_file](actions/write_selection_file.ja.md) - 選択されたテキストを指定アクション付きの一時ファイルに書き込み

### 設定
- [open_config](actions/open_config.ja.md) - 設定ファイルをデフォルトエディターで開く
- [reload_config](actions/reload_config.ja.md) - 設定を再読み込み

### 入力シーケンス
- [text](actions/text.ja.md) - 指定されたテキスト文字列を送信
- [esc](actions/esc.ja.md) - ESCシーケンスを送信
- [csi](actions/csi.ja.md) - CSIシーケンスをターミナルに送信
- [cursor_key](actions/cursor_key.ja.md) - カーソルキーモード状態に基づいてカーソルキーデータを送信
- [ignore](actions/ignore.ja.md) - このキー組み合わせを無視
- [unbind](actions/unbind.ja.md) - 以前にバインドされたキーバインディングをバインド解除

### クイックターミナル
- [toggle_quick_terminal](actions/toggle_quick_terminal.ja.md) - クイックターミナルウィンドウをトグル

### コマンドパレット
- [toggle_command_palette](actions/toggle_command_palette.ja.md) - コマンドパレットをトグル

### 元に戻す、やり直す
- [undo](actions/undo.ja.md) - フォーカスされたサーフェスの最後の元に戻せるアクションを元に戻す
- [redo](actions/redo.ja.md) - 最後の元に戻した操作をやり直す

### アプリケーション
- [quit](actions/quit.ja.md) - Ghosttyアプリケーションを終了
- [check_for_updates](actions/check_for_updates.ja.md) - 利用可能なGhostty更新をチェック
- [toggle_secure_input](actions/toggle_secure_input.ja.md) - キーボード監視を防ぐセキュア入力モードをトグル

### インスペクターとデバッグ
- [inspector](actions/inspector.ja.md) - ターミナルインスペクターの可視性を制御
- [crash](actions/crash.ja.md) - テスト用にGhosttyを目的のスレッドでクラッシュ
