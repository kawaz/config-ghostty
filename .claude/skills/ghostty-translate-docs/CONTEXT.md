# ghostty-translate-docs スキル開発コンテキスト

## 現在の状態

**完了**: プラットフォーム別ドキュメント生成機能を追加

### 実施した修正 (2025-12-23)

1. **classifier.md 新規作成**（分類ワーカー）:
   - category.json 生成（意味的なカテゴリ分類）
   - platform.json 生成（プラットフォーム判定）
   - index-*.en.md 生成（4種類のインデックス）

2. **orchestrator.md 更新**:
   - 分類ワーカー → 翻訳ワーカーのフローに拡張

3. **translator.md 更新**:
   - .en.txt 翻訳時に .en.md, .ja.md も同時生成

### テスト結果 (2025-12-23)

- 分類ワーカー: category.json (17カテゴリ), platform.json (233項目), index-*.en.md (4件) 正常生成
- 翻訳ワーカー: .en.md, .ja.txt, .ja.md 全て正常生成

## アーキテクチャ

```
オーケストレーター
  │
  ├─ 1. Bash: prepare-translation.sh (en.txt生成、バッチ分割)
  │
  ├─ 2. Task: 分類ワーカー × 1 (sonnet)
  │      - category.json 作成/更新
  │      - platform.json 作成
  │      - index-*.en.md 生成
  │
  ├─ 3. Task: 翻訳ワーカー × N (haiku、並列)
  │      - *.en.md 生成
  │      - *.ja.txt 生成
  │      - *.ja.md 生成
  │
  └─ 4. 結果報告
```

## 出力ファイル構造

```
docs/
├── category.json              # カテゴリ定義（次回参照用に保持）
├── platform.json              # プラットフォーム判定（次回参照用に保持）
├── .tmp.ghostty-translate-docs/  # 一時ファイル
│   └── translate-batch-*.txt     # バッチファイル
├── en/
│   ├── index-all.en.md        # 全項目
│   ├── index-macos.en.md      # macOS用
│   ├── index-linux.en.md      # Linux用
│   ├── index-platform-specific.en.md
│   ├── config/*.en.txt, *.en.md
│   └── actions/*.en.txt, *.en.md
└── ja/
    ├── index-*.ja.md          # 翻訳版
    ├── config/*.ja.txt, *.ja.md
    └── actions/*.ja.txt, *.ja.md
```

## platform.json 形式

```json
{
  "config/font-family": ["all"],
  "config/macos-icon": ["macos"],
  "config/gtk-titlebar": ["linux"],
  "config/some-feature": ["macos", "windows"],
  "actions/show_gtk_inspector": ["linux", "windows"]
}
```

型: `("macos" | "linux" | "windows" | "all")[]`

## ファイル構成

```
.claude/skills/ghostty-translate-docs/
├── SKILL.md                      # メインが読む
├── CONTEXT.md                    # このファイル
├── instructions/
│   ├── orchestrator.md           # オーケストレーター
│   ├── classifier.md             # 分類ワーカー
│   └── translator.md             # 翻訳ワーカー
└── scripts/
    ├── prepare-translation.sh
    ├── get-ghostty-config-dir.sh
    ├── split-docs.sh
    ├── detect-changes.sh
    ├── split-docs-config.sh
    └── split-docs-actions.sh
```

## 関連Issue

- #1: サブエージェントのネスト制限対応（解決済み）
- #3: バッチ分割と並列処理の改善（解決済み）
