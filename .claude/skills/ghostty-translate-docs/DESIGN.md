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

---

## 設計思想

### コンテキスト節約（最重要）

このスキルは 600 以上のファイルを処理するため、**コンテキスト管理が最重要課題**である。
適切に設計しないと、処理途中でコンテキストが溢れて失敗する。

#### なぜコンテキストが問題になるか

1. **処理対象が大量**: config 約180件 + actions 約70件 = 約250ファイル
2. **各ファイルの読み書き**: 1ファイルあたり数百〜数千トークン
3. **並列ワーカー**: 8バッチ × 各30グループ = 大量の処理
4. **verbose モード**: ユーザーが `--verbose` を有効にしていると、全ツール呼び出しログが出力に含まれる

#### 対策一覧

| 対策 | 内容 |
|-----|------|
| ワーカー分離 | オーケストレーターは処理せず、独立コンテキストのワーカーに委譲 |
| スクリプト化 | 機械的処理（分割・検出・マージ）はシェルスクリプトで実行 |
| 応答最小化 | ワーカーは結果ファイルに1行書くだけ、レスポンスは最小限 |
| TaskOutput禁止 | verbose時に巨大ログが流入するため、専用ファイル経由で結果取得 |
| ポーリング禁止 | `<agent-notification>` による自動通知を待つ |
| 内容読み込み禁止 | オーケストレーターはパス受け渡しのみ、ファイル内容はワーカーが処理 |

#### verbose モードへの配慮

`--verbose` 有効時、agent-notification の `output-file` には全ツールログが含まれる。
**output-file は絶対に読まない**。代わりにワーカーが書く専用結果ファイル（1行）を読む。

### スキルのポータビリティ

SKILL.md を読んだセッションは `SKILL_DIR` を知っているが、サブエージェント（ワーカー）は **自分がスキルの一部であることすら知らない**。

ワーカーに `SKILL_DIR` を渡さないと：
- 指示書・スクリプトの場所が分からず探し回る
- 最悪、新しいスクリプトを書き始めるなど想定外の動作をする

**解決策**: プロンプトに必ず `${SKILL_DIR}/instructions/xxx.md を読んで実行` と絶対パスを含める。

### 翻訳方針

翻訳ワーカーは Bash/Python 等でのファイル操作禁止。
必ず Read/Write ツールを使用し、**AI自身の言語能力** で翻訳する。

### グループ化

同じコメントブロックを共有する設定（例: `adjust-cell-height` と `adjust-cell-width`）は1グループとして処理。
重複読み込みを回避し、コンテキストを節約。

### platform 判定

1. **ファイル名パターン**: `macos-*` → macOS、`gtk-*`/`linux-*` → Linux
2. **内容パターン**: "Only implemented on macOS" 等のテキストから判定
3. **デフォルト**: `["all"]`

---

## 技術リファレンス

### ファイルパス規則

すべてのドキュメントは以下の汎用ルールに従う:

- 英語版: `{docs_dir}/en/**/*.en.{txt,md}`
- 日本語版: `{docs_dir}/ja/**/*.ja.{txt,md}`

例:
- `en/config/font-family.en.txt` → `ja/config/font-family.ja.txt`
- `en/index-all.en.md` → `ja/index-all.ja.md`

### データ形式

#### バッチファイル（batch-{N}.txt）

```
group_key:category/name
```

例:
```
abc123:config/font-family
def456:config/adjust-cell-height
def456:config/adjust-cell-width
```

#### ダイジェスト（digests.json）

```json
{
  "config/font-family": {
    "platform": ["all"],
    "description": "Font family for the terminal"
  }
}
```

#### カテゴリ（category.json）

```json
{
  "configs": {
    "Font": {
      "description": "Font settings",
      "items": ["font-family", "font-size"]
    }
  },
  "actions": {
    "Clipboard": {
      "description": "Clipboard operations",
      "items": ["copy_to_clipboard"]
    }
  }
}
```

#### プラットフォーム（platform.json）

```json
{
  "config/font-family": ["all"],
  "config/macos-icon": ["macos"]
}
```

### 出力ファイル

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

---

## 開発時の注意事項

### コミット前チェックリスト

ファイルの作成・修正・削除を行ったら、コミット前に以下を確認：

1. **DESIGN.md との整合性**: ディレクトリ構成、処理フロー、データ形式が最新か
2. **他の指示書との整合性**: パス規則、変数名、処理手順に矛盾がないか
3. **SKILL.md との整合性**: エントリーポイントや基本的な使い方に変更がないか
4. **ドキュメントの推敲**: セクション構成・順番・重要度が適切か、冗長な記述がないか

整合性が取れていないと、将来の改修時に混乱を招く。

---

## 補足

Claude Code では `/ghostty-translate-docs-shorthand` でもスキルを呼び出せる（Claude Code 固有機能）。
