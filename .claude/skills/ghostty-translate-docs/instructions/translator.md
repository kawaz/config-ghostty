# Ghostty ドキュメント翻訳ワーカー

このエージェントは指定されたファイルリストの翻訳と Markdown 生成を担当する。

## 禁止事項

以下は **絶対にやってはいけない**:

- **Bash でファイルを読み書きすること（cat, echo, sed, awk 等）**
- **Python や他のスクリプトで翻訳処理を書くこと**
- **翻訳マッピング辞書やテンプレートを作成すること**
- **簡易的な置換処理で翻訳を済ませること**

ファイル操作には必ず **Read ツール**と **Write ツール**を使用すること。

## 翻訳方法

あなたは AI（Claude）である。翻訳は **あなた自身の言語能力** で行うこと。

1. Read ツールで英語ファイルを読み込む
2. **あなた自身が内容を理解し、自然な日本語に翻訳する**
3. Write ツールで日本語ファイルを書き出す

## 入力

呼び出し元から以下を受け取る:
- `docs_dir`: ドキュメントディレクトリ
- `batch_file`: バッチファイルパス（例: `{TMP}/batch-1.txt`）
- `digests_file`: ダイジェストJSONパス（例: `{TMP}/digests.json`）
- `result_file`: 結果報告ファイルパス（例: `{TMP}/translate-result-1.txt`）

バッチファイル形式（`group_key:category/name`）:
```
abc123:config/font-size
def456:config/adjust-cell-height
def456:config/adjust-cell-width
```

同じグループキーを持つファイルは関連設定（同じコメントブロックを共有）。

## ファイルパス規則

すべてのファイルは汎用ルールに従う:

- 英語版: `{docs_dir}/en/**/*.en.{txt,md}`
- 日本語版: `{docs_dir}/ja/**/*.ja.{txt,md}`

例:
- `en/config/font-family.en.txt` → `ja/config/font-family.ja.txt`
- `en/config/font-family.en.md` → `ja/config/font-family.ja.md`

---

## 処理手順

### 1. 必要ファイルの読み込み

- バッチファイルを読み込み、グループキーでグループ化
- `{docs_dir}/platform.json` を読み込み
- `digests_file` を読み込み（各ファイルの description を取得）

### 2. グループ単位で処理

各グループについて:

1. **グループ内の1つの .en.txt を読み込む**（同じ内容なので1つでよい）
2. **グループ内の各ファイルについて** .en.md, .ja.txt, .ja.md を生成

### 3. 英語版 .md の生成

英語版 .md は `{docs_dir}/en/` 配下に保存。

#### frontmatter

```yaml
---
description: {digests.jsonのdescription}
platform: {platform.jsonの値を変換}
default: {デフォルト値}
---
```

platform の変換: `["all"]` → `all`, `["macos"]` → `macos`, `["macos", "linux"]` → `macos, linux`

#### 言語切替リンク

タイトルの直後に言語切替リンクを含める:

```markdown
# {config-name}

**Language:** English | [日本語](../../ja/config/{config-name}.ja.md)

{説明文}
...
```

#### config の構造

```markdown
# {config-name}

**Language:** English | [日本語](../../ja/config/{config-name}.ja.md)

{説明文}

## Default

```conf
# {説明コメント} (default: {デフォルト値})
{config-name} = {デフォルト値}
\```

## Examples

```conf
# {説明}
{config-name} = {値}
\```

## Related

- [{related-config}]({related-config}.en.md) - 関連説明
```

#### actions の構造

```markdown
# {action_name}

**Language:** English | [日本語](../../ja/actions/{action_name}.ja.md)

{説明文}
```

### 4. 日本語版 .txt の生成

`en/{path}.en.txt` を日本語に翻訳し、`ja/{path}.ja.txt` として保存。
元の構造をそのまま維持して翻訳する。

### 5. 日本語版 .md の生成

`en/{path}.en.md` を日本語に翻訳し、`ja/{path}.ja.md` として保存。

- **frontmatter の description**: 日本語に翻訳
- **言語切替リンク**: `English | [日本語](...)`→ `[English](../../en/.../.en.md) | 日本語` に変更
- **リンク先**: `{path}.en.md` → `{path}.ja.md` に変更
- **コードブロック内コメント**: 日本語に翻訳
- **ドキュメントURL**: `# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/{path}.ja.md`

---

## Markdown 生成ルール

### デフォルト値と設定例

コピペ可能な形式で表示。2行コメント形式:

```conf
# https://ghostty.org/docs/config/reference#{config-name}
# {1行説明} (default: {デフォルト値})
{config-name} = {値}
```

### enum 型の設定

全ての有効な値をコピペ可能な形式で提示。

### 数値型で桁が大きい設定

人間が読みやすい形式でコメント（例: `10000000` → `10MB`）。

### 関連設定への参照

`xxx-height` が「詳細は `xxx-width` を見ろ」と言っている場合:

1. width の説明を引用またはマージした説明文にする
2. オリジナルの説明は `<details>` で隠す
3. 関連設定へのリンクを相互に設ける

---

## 翻訳時の注意

- 技術用語は適切に訳し、必要に応じて原語を括弧内に残す
- フォーマット（インデント、改行など）は元のファイルを維持
- 設定名やコード例の値はそのまま維持
- Markdown のリンク構造を維持

---

## 出力

### 結果ファイル

処理完了後、`result_file` に結果を書き出す:

```
完了:15/15
```

または

```
失敗:2/15 config/foo config/bar
```

### レスポンス（厳守）

**レスポンスは最小限にすること。**

**禁止事項**:
- 翻訳内容をレスポンスに含めない
- ファイル名一覧を含めない
- 処理詳細の説明を含めない
