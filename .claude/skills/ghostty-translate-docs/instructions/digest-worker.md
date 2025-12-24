# Ghostty ドキュメント ダイジェスト生成ワーカー

このエージェントは英語ドキュメントから要約情報（platform判定 + 1行description）を抽出する。

## 禁止事項

- **Bash でファイルを読み書きしない**（Read/Write ツールを使用）
- **翻訳は行わない**（descriptionは英語のまま）

## 入力

呼び出し元から以下を受け取る:
- `docs_dir`: ドキュメントディレクトリ
- `batch_file`: バッチファイルパス（例: `{TMP}/batch-1.txt`）
- `output_file`: 出力JSONファイルパス（例: `{TMP}/digests-1.json`）
- `result_file`: 結果報告ファイルパス（例: `{TMP}/digest-result-1.txt`）

バッチファイルの形式（`group_key:rel_path`）:
```
abc123:config/font-family
def456:config/adjust-cell-height
def456:config/adjust-cell-width
```

同じグループキーを持つファイルは関連設定（同じコメントブロックを共有）。

## 処理手順

### 1. バッチファイルを読み込む

グループキーでグループ化:
```
{
  "abc123": ["config/font-family"],
  "def456": ["config/adjust-cell-height", "config/adjust-cell-width"]
}
```

### 2. グループ単位で処理

各グループについて:
1. **グループ内の1つの .en.txt を読み込む**（同じ内容なので1つでよい）
2. **グループ内の全ファイルに同じ platform と description を割り当て**

#### platform 判定ルール

1. **ファイル名による確定判定**:
   - `macos-*` → `["macos"]`
   - `gtk-*` または `linux-*` → `["linux"]`

2. **内容パターンによる判定**:
   - "Only implemented on macOS" → `["macos"]`
   - "Only implemented on Linux" → `["linux"]`
   - "only supported on macOS" → `["macos"]`
   - "only supported on Linux" / "only supported on GTK" → `["linux"]`
   - "has no effect on macOS" → `["linux", "windows"]`
   - "has no effect on Linux" → `["macos", "windows"]`

3. **デフォルト**: `["all"]`

#### description 抽出ルール

ファイル内容から1行の英語説明を抽出:

1. コメント行（`#` で始まる行）から最初の説明文を取得
2. 設定の目的・機能を簡潔に表す1文（50文字程度）
3. 技術的詳細やデフォルト値は含めない

例:
- `font-family` → "Font family for the terminal"
- `window-width` → "Initial window width in cells or pixels"
- `copy_to_clipboard` → "Copy selection to system clipboard"

### 3. 結果をJSONで出力

`output_file` に以下の形式で出力:

```json
{
  "config/font-family": {
    "platform": ["all"],
    "description": "Font family for the terminal"
  },
  "config/adjust-cell-height": {
    "platform": ["all"],
    "description": "Adjust cell height for character alignment"
  },
  "config/adjust-cell-width": {
    "platform": ["all"],
    "description": "Adjust cell width for character alignment"
  }
}
```

## 出力

### 結果ファイル

処理完了後、`result_file` に結果を書き出す:
```
OK: {件数}件
```

Write ツールで `result_file` に書き込むこと。

### レスポンス（厳守）

**レスポンスは最小限にすること。**

**理由**: ワーカーの出力はオーケストレーターのコンテキストに流入するため、最小限にする必要がある。

**禁止事項**:
- ファイル内容をレスポンスに含めない
- 処理詳細の説明を含めない
- 個別ファイルの結果一覧を含めない
- JSON内容を表示しない
