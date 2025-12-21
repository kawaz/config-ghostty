---
name: ghostty-translate-docs
description: Ghosttyドキュメントの日本語翻訳スキル。英語ドキュメントの分割、ハッシュベース差分検出、並列翻訳を自動化。gitに依存せずポータブル。
---

# Ghostty ドキュメント翻訳スキル

Ghosttyの設定・アクションドキュメントを日本語に翻訳するためのスキル。

## 特徴

- **ハッシュベース差分検出**: gitに依存せず、どの環境でも動作
- **並列翻訳**: 複数のワーカーエージェントで効率的に翻訳
- **ポータブル**: docs_dirを指定すれば任意の場所で使用可能
- **整理された一時ファイル**: 全て `.tmp.ghostty-translate-docs/` に格納

## 構成

```
skills/ghostty-translate-docs/
├── SKILL.md                      # このファイル
├── instructions/
│   ├── orchestrator.md          # オーケストレーター用指示書
│   └── translator.md            # 翻訳ワーカー用指示書
└── scripts/
    ├── split-docs.sh            # メインスクリプト（差分検出）
    ├── split-docs-config.sh     # config分割
    └── split-docs-actions.sh    # actions分割
```

## 使い方

### 引数

- `docs_dir`: ドキュメントディレクトリのパス

### 出力構造

```
docs_dir/
├── en/config/                    # 英語版configドキュメント
├── en/actions/                   # 英語版actionドキュメント
├── ja/config/                    # 日本語訳
├── ja/actions/
└── .tmp.ghostty-translate-docs/  # 一時・キャッシュファイル
    ├── hashes/                   # ハッシュキャッシュ（永続）
    └── translate-batch-*.txt     # 翻訳バッチ（完了後削除）
```

### 起動方法

```
ghostty-translate-docs スキルを使って {docs_dir} のドキュメントを翻訳してください。
```

## 詳細ドキュメント

- [オーケストレーター指示書](instructions/orchestrator.md)
- [翻訳ワーカー指示書](instructions/translator.md)
