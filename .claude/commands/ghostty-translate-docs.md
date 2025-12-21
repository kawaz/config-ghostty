---
description: ghosttyドキュメントを分割し、日本語に翻訳します
allowed-tools: Bash, Read, Write, Glob, Grep, Task, TodoWrite
---

# Ghostty ドキュメント翻訳タスク

以下の手順でghosttyのドキュメントを分割・翻訳してください。

## 手順

### 1. split-docs.sh を実行して英語ドキュメントを分割

```bash
docs/split-docs.sh
```

これにより `docs/en/config/` と `docs/en/actions/` に英語ドキュメントが生成される。

### 2. jaディレクトリの準備

```bash
mkdir -p docs/ja/config docs/ja/actions
```

### 3. 翻訳対象ファイルの特定

まず `git status docs/en/` を実行して、英語版の差分を確認する。

次に、`docs/en/` 配下の全ての `*.en.txt` ファイルをリストアップし、以下の条件で翻訳対象を決定：

1. **新規翻訳**: `docs/ja/{category}/{name}.ja.txt` が存在しない
2. **再翻訳**: `git status` で対応する `docs/en/{category}/{name}.en.txt` が変更されている（modified または new file）

既に日本語訳があり、かつ英語版に差分がない場合はスキップする。

### 4. 並列翻訳の実行

翻訳が必要なファイルについて、**Taskツール（subagent_type=general-purpose, model=haiku）** を使って並列に翻訳を実行する。

各翻訳エージェントへの指示テンプレート:
```
docs/en/{category}/{name}.en.txt を読み込み、
内容を自然な日本語に翻訳して
docs/ja/{category}/{name}.ja.txt として保存してください。

翻訳ルール：
- 技術用語は適切に訳し、必要に応じて原語を括弧内に残す
- フォーマット（インデント、改行など）は元のファイルを維持
- 設定名やコード例はそのまま維持
- 説明文のみを翻訳

レスポンスルール（重要）：
- 完了時は「完了: {ファイル名}」とだけ報告
- 失敗時は「失敗: {ファイル名} - {エラー理由}」とだけ報告
- 翻訳内容自体はレスポンスに含めないこと（コンテキスト節約のため）
```

### 5. 結果サマリーの出力

処理完了後、以下を報告：
- 新規翻訳したファイル数とファイル名
- 再翻訳したファイル数とファイル名
  - 差分があった場合は英語版の変更内容を簡潔に要約
- スキップしたファイル数（既存の翻訳があり変更なし）
- エラーがあった場合はその内容
