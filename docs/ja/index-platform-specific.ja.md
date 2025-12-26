# プラットフォーム固有フィーチャー

**Language:** [English](../en/index-platform-specific.en.md) | 日本語

**Platform Index:** [すべて](index-all.ja.md) | [macOS](index-macos.ja.md) | [Linux](index-linux.ja.md) | プラットフォーム固有

---

## macOS のみ

### 設定オプション
- [font-thicken](config/font-thicken.ja.md) - macOSでフォントを太いストロークで描画
- [font-thicken-strength](config/font-thicken-strength.ja.md) - 有効時のフォント太さの強度
- [window-position-x](config/window-position-x.ja.md) - 開始ウィンドウX位置（ピクセル）
- [window-position-y](config/window-position-y.ja.md) - 開始ウィンドウY位置（ピクセル）
- [window-step-resize](config/window-step-resize.ja.md) - ウィンドウをセルサイズの離散的な増分でリサイズ
- [window-colorspace](config/window-colorspace.ja.md) - ターミナルカラーを解釈する色空間
- [window-vsync](config/window-vsync.ja.md) - 画面リフレッシュレートとレンダリングを同期
- [window-save-state](config/window-save-state.ja.md) - ウィンドウ状態の保存と復元を有効化
- [quick-terminal-animation-duration](config/quick-terminal-animation-duration.ja.md) - クイックターミナルアニメーション時間
- [quick-terminal-screen](config/quick-terminal-screen.ja.md) - クイックターミナルが表示される画面
- [quick-terminal-space-behavior](config/quick-terminal-space-behavior.ja.md) - スペース切り替え時のクイックターミナル動作
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

### アクション
- [undo](actions/undo.ja.md) - フォーカスされたサーフェスの最後の元に戻せるアクションを元に戻す
- [toggle_secure_input](actions/toggle_secure_input.ja.md) - キーボード監視を防ぐセキュア入力モードをトグル
- [toggle_visibility](actions/toggle_visibility.ja.md) - すべてのウィンドウを表示または非表示
- [toggle_window_float_on_top](actions/toggle_window_float_on_top.ja.md) - ウィンドウを常に前に浮かすようにトグル
- [reset_window_size](actions/reset_window_size.ja.md) - ウィンドウをデフォルトサイズにリセット
- [check_for_updates](actions/check_for_updates.ja.md) - 利用可能なGhostty更新をチェック

## Linux のみ

### 設定オプション
- [window-subtitle](config/window-subtitle.ja.md) - ウィンドウサブタイトルに表示するテキスト
- [window-titlebar-background](config/window-titlebar-background.ja.md) - ウィンドウタイトルバーの背景色
- [window-titlebar-foreground](config/window-titlebar-foreground.ja.md) - ウィンドウタイトルバーの前景色
- [window-show-tab-bar](config/window-show-tab-bar.ja.md) - タブバーの表示制御
- [gtk-titlebar](config/gtk-titlebar.ja.md) - ウィンドウマネージャータイトルバーの代わりに完全なGTKタイトルバーを表示
- [gtk-titlebar-style](config/gtk-titlebar-style.ja.md) - GTKタイトルバーのスタイル（ネイティブまたはタブ）
- [gtk-titlebar-hide-when-maximized](config/gtk-titlebar-hide-when-maximized.ja.md) - ウィンドウが最大化されたときにタイトルバーを非表示
- [gtk-tabs-location](config/gtk-tabs-location.ja.md) - GTKタブバーの位置（上、下、非表示）
- [gtk-wide-tabs](config/gtk-wide-tabs.ja.md) - GTKタブが利用可能なスペースを埋めるようにする
- [gtk-toolbar-style](config/gtk-toolbar-style.ja.md) - GTKツールバーとタブバーの外観スタイル
- [gtk-single-instance](config/gtk-single-instance.ja.md) - Ghostty GTKアプリケーションをシングルインスタンスモードで実行
- [gtk-custom-css](config/gtk-custom-css.ja.md) - GTKスタイリング用のカスタムCSSファイルを読み込む
- [gtk-opengl-debug](config/gtk-opengl-debug.ja.md) - GTK OpenGLデバッグログを有効化または無効化
- [gtk-quick-terminal-layer](config/gtk-quick-terminal-layer.ja.md) - クイックターミナルウィンドウのレイヤー位置
- [gtk-quick-terminal-namespace](config/gtk-quick-terminal-namespace.ja.md) - クイックターミナルウィンドウの名前空間識別子
- [linux-cgroup](config/linux-cgroup.ja.md) - サーフェス用のLinux cgroupリソース分離を有効化
- [linux-cgroup-memory-limit](config/linux-cgroup-memory-limit.ja.md) - ターミナルプロセスのメモリ制限
- [linux-cgroup-processes-limit](config/linux-cgroup-processes-limit.ja.md) - cgroupを使用した個別ターミナルプロセスのプロセス制限
- [linux-cgroup-hard-fail](config/linux-cgroup-hard-fail.ja.md) - cgroup初期化失敗時にGhosttyの起動に失敗
- [freetype-load-flags](config/freetype-load-flags.ja.md) - FreeTypeフォントレンダリング読み込みフラグ
- [async-backend](config/async-backend.ja.md) - 非同期IOとイベント処理に使用する低レベルAPI
- [class](config/class.ja.md) - WM_CLASSとDBus接続用のアプリケーションクラス
- [x11-instance-name](config/x11-instance-name.ja.md) - X11 WM_CLASS インスタンス名を設定
- [quit-after-last-window-closed-delay](config/quit-after-last-window-closed-delay.ja.md) - 最後のウィンドウクローズ後の終了遅延
- [bell-audio-volume](config/bell-audio-volume.ja.md) - ベル音声のボリュームレベル
- [bell-audio-path](config/bell-audio-path.ja.md) - ベル通知用の音声ファイルパス
- [app-notifications](config/app-notifications.ja.md) - Ghosttyのアプリ内通知を制御

### アクション
- [toggle_window_decorations](actions/toggle_window_decorations.ja.md) - ウィンドウ装飾（タイトルバー、ボタンなど）をトグル
- [toggle_tab_overview](actions/toggle_tab_overview.ja.md) - タブ概要ウィンドウをトグル
- [toggle_maximize](actions/toggle_maximize.ja.md) - 現在のウィンドウの最大化状態をトグル
- [show_gtk_inspector](actions/show_gtk_inspector.ja.md) - GTKインスペクターを表示
- [show_on_screen_keyboard](actions/show_on_screen_keyboard.ja.md) - スクリーンキーボードを表示
- [prompt_surface_title](actions/prompt_surface_title.ja.md) - ポップアップメッセージボックスで現在のサーフェスタイトルを変更（libadwaita必須）

## クロスプラットフォーム（macOSとLinux）

### 設定オプション
- [window-theme](config/window-theme.ja.md) - ウィンドウテーマの外観

## クロスプラットフォーム（すべてのプラットフォーム）

### 設定オプション
- [font-family](config/font-family.ja.md) - ターミナルのフォントファミリー
- [font-size](config/font-size.ja.md) - ターミナルのフォントサイズ（ポイント）
- [cursor-color](config/cursor-color.ja.md) - ターミナルカーソルの色
- [cursor-style](config/cursor-style.ja.md) - ターミナルのデフォルトカーソルスタイル
- [background](config/background.ja.md) - ターミナルウィンドウの背景色
- [background-opacity](config/background-opacity.ja.md) - 背景の不透明度レベルを設定
- [foreground](config/foreground.ja.md) - 前景テキスト色
- [theme](config/theme.ja.md) - ターミナルのカラーテーマを選択
- [window-width](config/window-width.ja.md) - 初期ウィンドウ幅（ターミナルグリッドセル数）
- [window-height](config/window-height.ja.md) - 初期ウィンドウ高さ（ターミナルグリッドセル数）
- [window-decoration](config/window-decoration.ja.md) - ウィンドウ装飾の設定
- [keybind](config/keybind.ja.md) - ターミナルアクション用のキーバインディングを設定
- [shell-integration](config/shell-integration.ja.md) - 強化機能のためのシェル統合自動注入を有効化
- [command](config/command.ja.md) - ターミナルシェルとして実行するコマンド

### アクション
- [copy_to_clipboard](actions/copy_to_clipboard.ja.md) - 現在選択されているテキストをクリップボードにコピー
- [paste_from_clipboard](actions/paste_from_clipboard.ja.md) - デフォルトクリップボードの内容をペースト
- [new_tab](actions/new_tab.ja.md) - 新しいタブを開く
- [new_window](actions/new_window.ja.md) - 新しいウィンドウを開く
- [new_split](actions/new_split.ja.md) - 指定された方向に新しい分割を作成
- [toggle_fullscreen](actions/toggle_fullscreen.ja.md) - 現在のウィンドウをフルスクリーン化または通常化
- [toggle_quick_terminal](actions/toggle_quick_terminal.ja.md) - クイックターミナルウィンドウをトグル
- [quit](actions/quit.ja.md) - Ghosttyアプリケーションを終了
