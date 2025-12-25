# ghostty-translate-docs 設計ドキュメント

Ghostty ターミナルエミュレーターの設定・アクションドキュメントを英語から日本語に翻訳するスキル。

## ディレクトリ構成

```
.claude/skills/ghostty-translate-docs/
├── SKILL.md                        # エントリーポイント
├── DESIGN.md                       # 本ドキュメント
├── instructions/
│   ├── orchestrator.md             # 全体制御（5並列、バッチ30）
│   ├── digest-worker.md            # platform/description抽出
│   ├── classifier.md               # カテゴリ分類・index生成
│   ├── translator.md               # 翻訳実行
│   └── index-translator.md         # インデックス翻訳
└── scripts/
    ├── split-docs.sh               # ghosttyコマンドからドキュメント抽出
    ├── split-docs-config.sh        # config設定の分割
    ├── split-docs-actions.sh       # actionsの分割
    ├── detect-changes.sh           # 変更検出（ハッシュ比較）
    ├── prepare-translation.sh      # バッチファイル作成
    ├── get-ghostty-config-dir.sh   # 設定ディレクトリ取得
    ├── launch-orchestrator.sh      # バックグラウンド起動
    └── merge-digests.sh            # ダイジェストJSONマージ
```

## 処理フロー

```
Phase 1: prepare-translation.sh
         ├── ghostty +show-config → config/*.en.txt
         ├── ghostty +list-actions → actions/*.en.txt
         └── 変更検出 → batch-{N}.txt

Phase 2: ダイジェスト生成（並列・haiku）
         └── digest-worker × MAX_WORKERS → digests-{N}.json

Phase 3: ダイジェストマージ + 分類（1ワーカー・opus）
         ├── merge-digests.sh → digests.json
         └── classifier → category.json, platform.json, en/index-*.en.md

Phase 4: 翻訳 + インデックス翻訳（並列・haiku）
         ├── translator × MAX_WORKERS → .en.md, .ja.txt, .ja.md
         └── index-translator × 1 → ja/index-*.ja.md

Phase 5: 結果報告
```

## コンテキスト節約（最重要設計思想）

このスキルは 600 以上のファイルを処理するため、**コンテキスト管理が最重要課題**である。
適切に設計しないと、処理途中でコンテキストが溢れて失敗する。

### なぜコンテキストが問題になるか

1. **処理対象が大量**: config 約180件 + actions 約70件 = 約250ファイル
2. **各ファイルの読み書き**: 1ファイルあたり数百〜数千トークン
3. **並列ワーカー**: 8バッチ × 各30グループ = 大量の処理
4. **verbose モード**: ユーザーが `--verbose` を有効にしていると、全ツール呼び出しログが出力に含まれる

### 対策 1: ワーカーによるコンテキスト分離

オーケストレーターは処理を行わず、ワーカーに委譲する。
各ワーカーは独立したコンテキストを持つため、オーケストレーターのコンテキストを消費しない。

```
オーケストレーター（軽量）
  ├── ワーカー1（独立コンテキスト）
  ├── ワーカー2（独立コンテキスト）
  └── ...
```

### 対策 2: 機械的な処理はスクリプト化

AIがやる必要のない機械的な処理はシェルスクリプトで実行する。

- ファイル分割・抽出 → `split-docs.sh`
- 変更検出 → `detect-changes.sh`
- バッチ作成 → `prepare-translation.sh`
- JSONマージ → `merge-digests.sh`

これによりAIのコンテキストを節約し、処理も高速化される。

### 対策 3: ワーカーの応答は最小限

ワーカーは処理結果を **専用の結果ファイル** に1行で書き出し、レスポンスは最小限にする。

**禁止事項**:
- 翻訳内容をレスポンスに含めない
- ファイル名一覧を含めない
- 処理詳細の説明を含めない
- JSON内容を表示しない

### 対策 4: TaskOutput の使用禁止

`TaskOutput` を読むと、ワーカーの全出力がオーケストレーターのコンテキストに流入する。
特に verbose モードでは全ツール呼び出しログが含まれ、**8ワーカー × 数万トークン** でコンテキストが破綻する。

**代替手段**:
- ワーカーの完了は `<agent-notification>` で検知（自動通知される）
- 結果は専用ファイル経由で取得（Read ツールで1行読むだけ）

### 対策 5: ポーリング禁止

`sleep` + ファイル存在チェックのループはコンテキストの無駄。
バックグラウンドワーカーは完了時に自動で `<agent-notification>` が返されるため、それを待つ。

### 対策 6: オーケストレーターはファイル内容を読まない

オーケストレーターが `digests.json` や翻訳ファイルの内容を読むと、コンテキストを大量に消費する。
オーケストレーターはパスの受け渡しのみを行い、ファイル内容はワーカーが処理する。

### verbose モードへの配慮

ユーザーが `--verbose` を有効にしている場合、agent-notification の `output-file` には全ツールログが含まれる。
このファイルを Read すると巨大なログがコンテキストに流入するため、**output-file は絶対に読まない**。
代わりに、ワーカーが書き出す専用の結果ファイル（1行）を読む。

## スキルのポータビリティ

### SKILL_DIR の受け渡し問題

SKILL.md を直接読んだセッション（オーケストレーター）は、スキルディレクトリの場所を把握している。
しかし、サブエージェント（ワーカー）は **自分がスキルの一部であることすら知らない**。

ワーカーに `SKILL_DIR` を渡さないと：
1. 指示書（`instructions/*.md`）の場所が分からない
2. スクリプト（`scripts/*.sh`）の場所が分からない
3. 一生懸命探し回ってコンテキストを浪費する

**最悪のケース**: 指示書もスクリプトも見つけられない場合、ワーカーは最初に与えられた短い指示だけで「翻訳してみる」ことを試みる。
詳細手順書が見つからないため、全く新しいスクリプトを書き始めたり、想定外の動作をするリスクがある。

### 解決策

オーケストレーターからワーカーへのプロンプトには、必ずスキルディレクトリのパスを含める：

```
${SKILL_DIR}/instructions/translator.md を読んで実行。
docs_dir={DOCS_DIR}
...
```

ワーカーは最初に指示書を読むことで、正確な手順を把握できる。

## 開発時の注意事項

### コミット前の整合性確認

ファイルの作成・修正・削除などのリファクタリングを行ったら、コミット前に以下を確認すること：

1. **DESIGN.md との整合性**: ディレクトリ構成、処理フロー、データ形式などが最新か
2. **他の指示書との整合性**: パス規則、変数名、処理手順に矛盾がないか
3. **SKILL.md との整合性**: エントリーポイントや基本的な使い方に変更がないか

整合性が取れていないと、将来の改修時に混乱を招く。

## その他の設計上の特徴

### グループ化

同じコメントブロックを共有する設定（例: `adjust-cell-height` と `adjust-cell-width`）は1グループとして処理。重複読み込みを回避。

### 翻訳はAI自身

翻訳ワーカーはBash/Python等でのファイル操作禁止。必ずRead/Writeツールを使用し、AI自身の言語能力で翻訳する。

### platform判定

1. **ファイル名パターン**: `macos-*` → macOS、`gtk-*`/`linux-*` → Linux
2. **内容パターン**: "Only implemented on macOS" 等のテキストから判定
3. **デフォルト**: `["all"]`

## データ形式

### バッチファイル（batch-{N}.txt）

```
group_key:category/name
```

例:
```
abc123:config/font-family
def456:config/adjust-cell-height
def456:config/adjust-cell-width
```

### ダイジェスト（digests.json）

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

### カテゴリ（category.json）

```json
{
  "configs": {
    "Font": {
      "description": "Font settings",
      "items": ["font-family", "font-size", "font-style-bold"]
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

### プラットフォーム（platform.json）

```json
{
  "config/font-family": ["all"],
  "config/macos-icon": ["macos"],
  "actions/toggle_secure_input": ["macos"]
}
```

## 出力ファイル

| ファイル | 説明 |
|---------|------|
| `en/config/*.en.txt` | 英語設定ドキュメント（元データ） |
| `en/config/*.en.md` | 英語設定Markdown |
| `ja/config/*.ja.txt` | 日本語設定ドキュメント |
| `ja/config/*.ja.md` | 日本語設定Markdown |
| `en/actions/*.en.txt` | 英語アクションドキュメント（元データ） |
| `en/actions/*.en.md` | 英語アクションMarkdown |
| `ja/actions/*.ja.txt` | 日本語アクションドキュメント |
| `ja/actions/*.ja.md` | 日本語アクションMarkdown |
| `category.json` | カテゴリ分類 |
| `platform.json` | プラットフォーム情報 |
| `en/index-*.en.md` | 英語インデックス（4ファイル） |
| `ja/index-*.ja.md` | 日本語インデックス（4ファイル） |

## ファイルパス規則

すべてのドキュメントは以下の汎用ルールに従う:

- 英語版: `{docs_dir}/en/**/*.en.{txt,md}`
- 日本語版: `{docs_dir}/ja/**/*.ja.{txt,md}`

例:
- `en/config/font-family.en.txt` → `ja/config/font-family.ja.txt`
- `en/index-all.en.md` → `ja/index-all.ja.md`
