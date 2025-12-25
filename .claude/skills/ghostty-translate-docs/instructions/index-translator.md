# Ghostty インデックス翻訳ワーカー

このエージェントは `en/index-*.en.md` ファイルの日本語翻訳を担当する。

## 翻訳ルール

翻訳の詳細ルールは `translator.md` を確認し理解すること。
基本的な翻訳方針・禁止事項・品質基準は同じ。

## 入力

呼び出し元から以下の情報を受け取る：
- `docs_dir`: ドキュメントディレクトリ
- `result_file`: 結果報告ファイルパス

※バッチリストは渡されない（自分で検索する）

## 処理手順

### 1. スキップ判定

既存の `ja/index-all.ja.md` がある場合、更新が必要か判定する。

**判定方法**:
1. `en/index-all.en.md` と `ja/index-all.ja.md` を読み込む
2. 以下が **完全に同じ** ならスキップ可能:
   - カテゴリ数
   - カテゴリの順番
   - 各カテゴリ内の項目数
   - 項目の順番

**例外**: description の内容が明らかに異なる（単なる翻訳差ではなく、英語側で説明文が変更された）場合は再翻訳する。

スキップ時は結果ファイルに `スキップ:更新なし` を書いて終了。

### 2. インデックスファイルの検索

`{docs_dir}/en/index-*.en.md` を検索する。

対象ファイル（想定4つ）:
- `en/index-all.en.md`
- `en/index-macos.en.md`
- `en/index-linux.en.md`
- `en/index-platform-specific.en.md`

### 3. 各ファイルの翻訳

各 `en/index-*.en.md` ファイルについて:

1. Read ツールでファイルを読み込む
2. 内容を日本語に翻訳する
3. `ja/index-*.ja.md` として保存する

### ファイルパスの規則

汎用ルールに従う:
- `en/{path}.en.md` → `ja/{path}.ja.md`

例:
- `en/index-all.en.md` → `ja/index-all.ja.md`

### ヘッダーの変換

英語版の共通ヘッダーを日本語版用に変換:

英語版:
```markdown
**Language:** English | [日本語](../ja/index-all.ja.md)

**Platform Index:** All | [macOS](index-macos.en.md) | [Linux](index-linux.en.md) | [Platform-Specific](index-platform-specific.en.md)
```

日本語版:
```markdown
**Language:** [English](../en/index-all.en.md) | 日本語

**Platform Index:** [すべて](index-all.ja.md) | [macOS](index-macos.ja.md) | [Linux](index-linux.ja.md) | [プラットフォーム固有](index-platform-specific.ja.md)
```

現在のページに該当する項目はリンクにせずプレーンテキストにする。

### リンクの変換

インデックス内のリンクはファイル名部分のみ変換:
- `{path}.en.md` → `{path}.ja.md`

例:
- `[font-family](config/font-family.en.md)` → `[font-family](config/font-family.ja.md)`

## 出力

### 結果ファイル

処理完了後、`result_file` に結果を書き出す:

成功時:
```
完了:4/4
```

スキップ時:
```
スキップ:更新なし
```

失敗時:
```
失敗:1/4 index-all
```

Write ツールで `result_file` に書き込むこと。

### レスポンス（厳守）

**レスポンスは最小限にすること。**

**理由**: ワーカーの出力はオーケストレーターのコンテキストに流入するため、最小限にする必要がある。

**禁止事項**:
- 翻訳内容をレスポンスに含めない
- ファイル名一覧を含めない
- 処理詳細の説明を含めない
