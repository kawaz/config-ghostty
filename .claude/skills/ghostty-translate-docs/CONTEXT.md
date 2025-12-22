# ghostty-translate-docs スキル開発コンテキスト

## 現在の状態

スキルは完成し、テスト済み。

### ファイル構成
```
.claude/skills/ghostty-translate-docs/
├── SKILL.md
├── CONTEXT.md              # このファイル
├── instructions/
│   ├── orchestrator.md     # オーケストレーター用指示書
│   └── translator.md       # 翻訳ワーカー用指示書
└── scripts/
    ├── prepare-translation.sh    # 前処理（バッチファイル作成まで）
    ├── get-ghostty-config-dir.sh # ghostty config dir 取得
    ├── split-docs.sh             # ghosttyからドキュメント分割のみ
    ├── detect-changes.sh         # 差分検出＆deprecated処理
    ├── split-docs-config.sh      # config分割
    └── split-docs-actions.sh     # actions分割

.claude/commands/ghostty-translate-docs.md  # スラッシュコマンド
```

### スクリプト責務

| スクリプト | 責務 |
|------------|------|
| prepare-translation.sh | 全体オーケストレーション、バッチファイル作成 |
| get-ghostty-config-dir.sh | ghostty config ディレクトリのパス取得 |
| split-docs.sh | ghosttyからドキュメント取得・分割 |
| detect-changes.sh | ハッシュ比較・差分検出・deprecated処理 |

### デフォルトの docs_dir

`get-ghostty-config-dir.sh` で取得した ghostty config ディレクトリ内の `docs/`。
優先順位:
1. `$XDG_CONFIG_HOME/ghostty` (存在すれば)
2. `~/.config/ghostty` (存在すれば)
3. `~/Library/Application Support/com.mitchellh.ghostty` (macOS)

## アーキテクチャ設計

### 二段構成

メインコンテキストの消費を最小限に抑えるため、二段構成を採用:

```
┌──────────────────┐
│ メインエージェント │  コンテキスト: 最小
│ (ユーザーと対話)  │  役割: オーケストレーターを claude -p で起動
└────────┬─────────┘
         │ Bash: claude -p (1プロセス)
         ↓
┌──────────────────┐
│ オーケストレーター │  コンテキスト: 中
│ (独立セッション)  │  役割: prepare-translation.sh 実行
│                  │        Task でワーカーを並列起動
└────────┬─────────┘
         │ Task × N (並列)
         ↓
┌──────────────────┐
│ 翻訳ワーカー × N  │  コンテキスト: 大（翻訳内容）
│                  │  役割: 実際の翻訳作業
└──────────────────┘
```

### 【重要】サブエージェントのネスト制限と対応

**Claude Code の制限**: サブエージェントは更にサブエージェントを起動できない。

```
メイン → Task(オーケストレーター) → Task(ワーカー)（NG！）
```

**対応策: オーケストレーターを claude -p で起動**

オーケストレーターを `claude -p` で起動すれば独立セッションになり、
そこからは普通に Task でワーカーを起動できる（1段のサブエージェントなのでOK）。

```
メイン → claude -p (オーケストレーター) → Task × N (ワーカー)（OK！）
```

ポイント：
- claude -p で起動するのはオーケストレーター1つだけ（プロセス爆発しない）
- オーケストレーターから見てワーカーは1段のサブエージェント（制限に抵触しない）

### 出力制御によるコンテキスト節約

**重要**: 各エージェントは処理結果の「内容」を返さない。

```
ワーカー:
  ✗ 翻訳結果を返す → オーケストレーターのコンテキストが爆発
  ○ ファイルに書き込み、「完了: 10件」とだけ返す

オーケストレーター:
  ○ 各ワーカーの完了報告を集約
  ○ 「成功: 233件、失敗: 0件」とメインに報告

メイン:
  ○ オーケストレーターの報告をそのままユーザーに伝える
```

### テスト可能性

- detect-changes.sh は単体でテスト可能
- `detect-changes.sh <new-en> <en> <ja>` で任意のディレクトリをテスト
- `prepare-translation.sh` 単体でバッチファイル作成まで確認可能

### ポータビリティ

- bash 3.x互換（declare -A 不使用）
- デフォルトdocs_dir: `$(get-ghostty-config-dir.sh)/docs`

## 関連Issue

- #1: サブエージェントのネスト制限対応
