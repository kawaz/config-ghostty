# Ghostty 設定管理

## 目的

このリポジトリはGhosttyの設定 (`config`) を管理する。ユーザーの要望に応じて設定を修正し、リロードして確認しながら調整する。

## ghostty コマンド

**重要**: ghosttyコマンドはsandbox内で動作しない。`dangerouslyDisableSandbox: true` で実行すること。

### 設定調査

```bash
# 全設定オプションとドキュメント表示
ghostty +show-config --default --docs

# 現在の設定（デフォルトから変更された部分のみ）
ghostty +show-config

# デフォルト設定
ghostty +show-config --default
```

### アクション調査

```bash
# キーバインドで使えるアクション一覧
ghostty +list-actions

# ドキュメント付き
ghostty +list-actions --docs
```

### その他のコマンド

```bash
ghostty +list-keybinds   # 現在のキーバインド一覧
ghostty +list-themes     # 利用可能なテーマ一覧
ghostty +list-fonts      # 利用可能なフォント一覧
ghostty +validate-config # 設定の検証
```

## ワークフロー

1. ユーザーの要望を聞く
2. 必要なら `+show-config --default --docs` で設定項目を調査
3. `config` ファイルを編集
4. ユーザーにGhosttyをリロード（`cmd+shift+,` または `reload_config` アクション）してもらう
5. フィードバックを受けて調整
