# ghostty-translate-docs 設計ドキュメント

Ghostty ターミナルエミュレーターの設定・アクションドキュメントを英語から日本語に翻訳するスキル。

## ディレクトリ構成

```
.claude/skills/ghostty-translate-docs/
├── SKILL.md                        # エントリーポイント
├── DESIGN.md                       # 本ドキュメント
├── instructions/
│   ├── orchestrator.md             # 全体制御（5並列、バッチ15）
│   ├── digest-worker.md            # platform/description抽出
│   ├── classifier.md               # カテゴリ分類・index生成
│   └── translator.md               # 翻訳実行
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
         └── classifier → category.json, platform.json, index-*.en.md

Phase 4: 翻訳（並列・haiku）
         └── translator × MAX_WORKERS → .en.md, .ja.txt, .ja.md

Phase 5: 結果報告
```

## 主な設計上の特徴

### コンテキスト節約

ワーカーは1行のみ返答する設計。オーケストレーターのコンテキストを圧迫しない。

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
| `index-all.en.md` | 全項目インデックス |
| `index-macos.en.md` | macOS対応項目インデックス |
| `index-linux.en.md` | Linux対応項目インデックス |
| `index-platform-specific.en.md` | プラットフォーム固有機能インデックス |
