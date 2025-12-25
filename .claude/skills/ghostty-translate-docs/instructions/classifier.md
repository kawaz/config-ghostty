# Ghostty ドキュメント分類ワーカー

このエージェントはダイジェスト情報を基にカテゴリ分類とインデックス生成を担当する。

## 禁止事項

- **Bash でファイルを読み書きしない**（Read/Write ツールを使用）
- **個別の .en.txt を読まない**（digests.json のみ使用）

## 入力

呼び出し元から以下を受け取る:
- `docs_dir`: ドキュメントディレクトリ
- `digests_file`: マージ済みダイジェストJSONのパス（例: `{TMP}/digests.json`）
- `result_file`: 結果報告ファイルパス（例: `{TMP}/classify-result.txt`）

## 処理手順

### 1. ダイジェストと既存ファイルの読み込み

以下を読み込む:
- `digests_file` - 全ファイルの platform と description
- `{docs_dir}/category.json` - 既存のカテゴリ定義（あれば）

digests.json の形式:
```json
{
  "config/font-family": {
    "platform": ["all"],
    "description": "Font family for the terminal"
  },
  "config/macos-icon": {
    "platform": ["macos"],
    "description": "macOS dock icon style"
  }
}
```

### 2. カテゴリ分類

description とファイル名から、意味的に関連する設定をグループ化する。

#### 分類の指針

- **ファイル名プレフィックス**は参考程度（意味的関連性を優先）
- **同じ機能領域**に属する設定をまとめる
- カテゴリ名は **英語で簡潔に**（2-4語）

#### カテゴリ例

| カテゴリ | 含まれる設定例 |
|---------|---------------|
| Font | font-family, font-size, font-style-* |
| Window Size & Position | window-width, window-height, window-position-* |
| Window Appearance | window-decoration, window-theme, window-titlebar-* |
| Cursor | cursor-style, cursor-color, cursor-opacity |
| Clipboard | clipboard-read, clipboard-write, copy-on-select |
| Scrollback | scrollback-limit, scroll-* |
| Shell Integration | shell-integration, shell-integration-features |
| Background | background, background-opacity, background-image-* |
| macOS | macos-* |
| Linux / GTK | gtk-*, linux-* |
| Keyboard & Input | keybind, input, mouse-* |
| Quick Terminal | quick-terminal-* |

### 3. JSON ファイルの出力

#### platform.json

ダイジェストから platform 情報を抽出して出力:

```json
{
  "config/font-family": ["all"],
  "config/macos-icon": ["macos"],
  "actions/toggle_secure_input": ["macos"]
}
```

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

### 4. インデックスファイルの生成

digests.json と category.json を使って `{docs_dir}/en/` 配下に以下を生成:

#### en/index-all.en.md

全項目をカテゴリ別に列挙:

```markdown
# Ghostty Configuration Reference

## Configuration Options

### Font
- [font-family](config/font-family.en.md) - Font family for the terminal
- [font-size](config/font-size.en.md) - Font size in points

### Window Size & Position
- [window-width](config/window-width.en.md) - Initial window width
...

## Actions

### Clipboard
- [copy_to_clipboard](actions/copy_to_clipboard.en.md) - Copy selection to clipboard
...
```

#### en/index-macos.en.md

`"all"` または `"macos"` を含む項目のみ。

#### en/index-linux.en.md

`"all"` または `"linux"` を含む項目のみ。

#### en/index-platform-specific.en.md

プラットフォーム固有機能をまとめる:

```markdown
# Platform-Specific Features

## macOS Only

### Configuration Options
- [macos-icon](config/macos-icon.en.md) - macOS dock icon style
...

## Linux Only

### Configuration Options
- [gtk-titlebar](config/gtk-titlebar.en.md) - Show GTK titlebar
...

## Cross-Platform

### Configuration Options
- [font-family](config/font-family.en.md) - Font family
...
```

## 出力

### 結果ファイル

処理完了後、`result_file` に結果を書き出す:
```
完了: cat={カテゴリ数} plat={項目数} idx=4
```

Write ツールで `result_file` に書き込むこと。

### レスポンス（厳守）

**レスポンスは最小限にすること。**

**理由**: ワーカーの出力はオーケストレーターのコンテキストに流入するため、最小限にする必要がある。

**禁止事項**:
- ファイル内容をレスポンスに含めない
- 処理詳細の説明を含めない
- カテゴリ一覧を含めない
