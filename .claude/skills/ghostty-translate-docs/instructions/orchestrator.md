# Ghostty ドキュメント翻訳オーケストレーター

## 入力

- `docs_dir`: ドキュメントディレクトリのパス（未指定ならデフォルト）
- `skill_dir`: `.claude/skills/ghostty-translate-docs`

## 手順

### 1. 準備スクリプトを実行

```bash
$skill_dir/scripts/prepare-translation.sh $docs_dir
```

このスクリプトが全ての前処理を行う：
- 英語ドキュメントの分割
- ハッシュベース差分検出
- 翻訳バッチファイルの作成

出力から `BATCH_COUNT`, `DOCS_DIR`, `TMP_DIR` の値を取得。

`BATCH_COUNT=0` なら「翻訳が必要なファイルはありません」と報告して終了。

### 2. 翻訳ワーカーの起動

`BATCH_COUNT` が1以上の場合、各バッチについて Task で翻訳ワーカーを起動。

全てのワーカーを **1つのメッセージ内で並列に** Task ツールで起動すること：
- subagent_type: general-purpose
- model: haiku

各ワーカーへの指示：
```
$skill_dir/instructions/translator.md を読んで、
docs_dir=$DOCS_DIR として
$TMP_DIR/translate-batch-{n}.txt に記載されたファイルを翻訳してください。
```

**注意**: BATCH_COUNT が大きい場合（例: 10以上）、並列数を制限する：
- 最大5並列程度で分割実行
- 完了を待ってから次のバッチグループを起動

### 3. 結果の記録と報告

全ワーカーの完了後：

1. **結果リストをファイルに書き出し**:
   - `$TMP_DIR/translation-result.txt` に翻訳したファイル一覧を記録
   - 形式: 1行1ファイル（`category/name`）

2. **要約を作成して報告**:
   - 成功/失敗件数
   - カテゴリ別の内訳（config: N件、actions: N件）
   - 主な変更内容の概要（新規追加、更新など）

報告例：
```
翻訳完了: 33件成功、0件失敗

内訳:
- config: 22件（フォント関連 5件、ウィンドウ関連 8件、その他 9件）
- actions: 11件（クリップボード関連 4件、ウィンドウ操作 7件）

結果リスト: $TMP_DIR/translation-result.txt
詳細が必要な場合はお知らせください。
```

**重要**: 翻訳内容自体は返さない。要約とファイルパスのみ。
ユーザーが詳細を求めた場合は、結果リストを読んで個別に説明できる。
