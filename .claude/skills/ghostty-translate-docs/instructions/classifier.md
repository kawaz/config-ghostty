# Ghostty ドキュメント分類ワーカー

このエージェントは英語ドキュメントの分類、プラットフォーム判定、Markdown生成を担当する。

## 禁止事項（重要）

以下は絶対にやってはいけない:

- **Bash スクリプトや Python スクリプトで処理を書くこと**
- **ファイル操作に Bash を使うこと（cat, echo, sed 等）**

ファイル操作には必ず **Read ツール**と **Write ツール**を使用すること。

## 入力

呼び出し元から以下の情報を受け取る:
- `docs_dir`: ドキュメントディレクトリのパス（例: `/path/to/docs`）

## 処理手順

### 1. 既存ファイルの確認

以下のファイルが存在すれば Read で読み込む（なければスキップ）:
- `{docs_dir}/category.json` - 既存のカテゴリ定義
- `{docs_dir}/platform.json` - 既存のプラットフォーム判定

### 2. 全ドキュメントの読み込みと分析

`{docs_dir}/en/config/*.en.txt` と `{docs_dir}/en/actions/*.en.txt` を全て読み込み、以下を判定:

#### プラットフォーム判定ルール

対応プラットフォームは配列で表現。型: `("macos" | "linux" | "windows" | "all")[]`

1. **ファイル名による判定**（確定的）:
   - `macos-*` → `["macos"]`
   - `gtk-*` → `["linux"]`
   - `linux-*` → `["linux"]`

2. **内容パターンによる判定**:
   - "Only implemented on macOS" → `["macos"]`
   - "Only implemented on Linux" → `["linux"]`
   - "only supported on macOS" → `["macos"]`
   - "only supported on Linux" / "only supported on GTK" → `["linux"]`
   - "has no effect on macOS" → `["linux", "windows"]`
   - "has no effect on Linux" → `["macos", "windows"]`

3. **デフォルト**（上記にマッチしない）:
   - `["all"]` - 全プラットフォーム対応

#### カテゴリ分類ルール

意味的に関連する設定をグループ化する。ファイル名プレフィックスは参考程度。

例:
- `font-family`, `font-size`, `font-style-*` → "Font"
- `window-width`, `window-height`, `window-position-*` → "Window Size & Position"
- `window-decoration`, `window-theme`, `window-titlebar-*` → "Window Appearance"
- `cursor-style`, `cursor-color`, `cursor-opacity` → "Cursor"
- `macos-*` → "macOS"
- `gtk-*`, `linux-*` → "Linux / GTK"

既存の category.json があれば、それを参考にしつつ必要に応じて更新する。

### 3. JSON ファイルの出力

出力先: `{docs_dir}/`

#### category.json

```json
{
  "configs": {
    "Font": {
      "description": "Font settings",
      "items": ["font-family", "font-size", "font-style-bold"]
    },
    "Window Size & Position": {
      "description": "Window dimensions and placement",
      "items": ["window-width", "window-height", "window-position-y"]
    }
  },
  "actions": {
    "Clipboard": {
      "description": "Clipboard operations",
      "items": ["copy_to_clipboard", "paste_from_clipboard"]
    }
  }
}
```

#### platform.json

```json
{
  "config/font-family": ["all"],
  "config/macos-icon": ["macos"],
  "config/gtk-titlebar": ["linux"],
  "config/some-feature": ["macos", "windows"],
  "actions/toggle_secure_input": ["macos"]
}
```

### 4. インデックスファイルの生成

注意: 個別の .en.md ファイル（config/*.en.md, actions/*.en.md）は翻訳ワーカーが生成するため、ここでは生成しない。

以下の4つのインデックスを生成:

#### index-all.en.md

全項目をカテゴリ別に列挙。

```markdown
# Ghostty Configuration Reference

## Configuration Options

### Font
- [font-family](config/font-family.en.md) - Font family. Default: `monospace`
- [font-size](config/font-size.en.md) - Font size in points. Default: `13`

### Window Size & Position
- [window-width](config/window-width.en.md) - Initial window width
...

## Actions

### Clipboard
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - Copy selection to clipboard
...
```

#### index-macos.en.md

index-all と同じ構造だが、`"all"` または `"macos"` を含む項目のみを含める。
- `["all"]` → 含める
- `["macos"]` → 含める
- `["macos", "linux"]` → 含める
- `["linux"]` → 除外
- `["linux", "windows"]` → 除外

#### index-linux.en.md

index-all と同じ構造だが、`"all"` または `"linux"` を含む項目のみを含める。
- `["all"]` → 含める
- `["linux"]` → 含める
- `["macos", "linux"]` → 含める
- `["macos"]` → 除外
- `["macos", "windows"]` → 除外

#### index-platform-specific.en.md

環境固有機能をプラットフォーム別にまとめる。

```markdown
# Platform-Specific Features

## macOS Only

### Configuration Options
- [macos-icon](config/macos-icon.en.md) - App icon style
...

### Actions
- [toggle_secure_input](actions/toggle_secure_input.en.md) - Toggle secure input
...

## Linux Only

### Configuration Options
- [gtk-titlebar](config/gtk-titlebar.en.md) - Show GTK titlebar
...

### Actions
- [toggle_window_decorations](actions/toggle_window_decorations.en.md) - Toggle decorations
...

## Windows Only

### Configuration Options
（No Windows-specific options currently）

### Actions
（No Windows-specific actions currently）

## Cross-Platform

### Configuration Options
- [font-family](config/font-family.en.md) - Font family
...

### Actions
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - Copy selection
...
```

## 出力

処理完了後、簡潔に報告:
```
完了:
- category.json: {カテゴリ数}カテゴリ
- platform.json: {項目数}項目
- index-*.en.md: 4件
```
