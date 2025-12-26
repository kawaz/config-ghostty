# Ghostty ドキュメント ダイジェスト生成ワーカー

このエージェントは英語ドキュメントから要約情報（platform判定 + 1行description）を抽出する。

## 必須事項（最重要・絶対遵守）

**バッチファイル内のすべてのエントリを処理すること。スキップ禁止。**

- バッチファイルの行数 = 出力JSONのエントリ数 でなければならない
- 「処理済み」「既存」などの理由でスキップしてはいけない
- 各 `group_key:path` の path すべてに対応するエントリを出力する

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
2. **グループ内の各ファイルに固有の description を生成**（後述）
3. **platform は共通で割り当て**

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

#### description 生成ルール

**重要**: コメントの最初の1行をそのまま使うのではなく、AIとして内容を理解し、設定ごとに適切な説明を**生成**する。

##### 生成の基準

1. **コメント全体を読む**（`#` で始まる行すべて）
2. **設定名に応じた説明を生成**:
   - リファレンスインデックスに適した端的な説明
   - 「何をする設定か」「何のためのアクションか」を一言で
   - **条件・例外・デフォルト値は含めない**
   - 40-60文字程度の英語

##### グループ内で固有の説明を生成

同じコメントを共有するグループでも、**各設定名に応じた固有の説明**を生成する:

| 設定名 | 正しい description |
|--------|-------------------|
| `font-family` | "Font family for the terminal" |
| `font-family-bold` | "Font family for bold text" |
| `font-family-italic` | "Font family for italic text" |
| `window-width` | "Initial window width" |
| `window-height` | "Initial window height" |
| `adjust-cell-width` | "Adjust cell width for character alignment" |
| `adjust-cell-height` | "Adjust cell height for character alignment" |

##### 良い例

- `clipboard-paste-protection` → "Require confirmation before pasting unsafe text"
- `cursor-color` → "The color of the cursor"
- `font-family` → "Font family for the terminal"
- `copy_to_clipboard` → "Copy selection to system clipboard"

##### 悪い例（避けるべき）

- ❌ "Require confirmation before pasting text that appears unsafe. This helps prevent a..." → 途中で切れている
- ❌ "The color of the cursor (default will be chosen if not set)" → 括弧内の条件は不要
- ❌ "Font family for the terminal. Multiple fonts can be specified..." → 詳細すぎる
- ❌ 同じグループ内の全ファイルに同一の説明 → 各設定名に固有の説明が必要

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

### 報告前の検証（必須）

結果を報告する前に、必ず以下を確認すること:

1. バッチファイルの行数をカウント（期待件数）
2. 出力JSONのキー数をカウント（実際件数）
3. 両者が一致することを確認

**一致しない場合**: 欠落しているエントリを特定し、処理を追加してから報告する。

### 結果ファイル

検証が完了したら、`result_file` に結果を書き出す:
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
