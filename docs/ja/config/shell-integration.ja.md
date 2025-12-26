---
description: 機能強化のためのシェル統合自動注入を有効化
platform: all
default: "detect"
---

# shell-integration

**言語:** [English](../../en/config/shell-integration.en.md) | 日本語

## 説明

シェル統合の自動注入を有効にするかどうかを設定します。シェル統合は、多くの機能を有効にすることで、ターミナルエクスペリエンスを大幅に向上させます：

- 作業ディレクトリレポートにより、新しいタブ、分割は前のターミナルの作業ディレクトリを継承します。

- プロンプトマーク付けにより「jump_to_prompt」キーバインディングが有効になります。

- プロンプトに座っている場合、ターミナルを閉じると確認を求められません。

- 複雑なプロンプトでウィンドウをリサイズすると、通常はより良く描画されます。

許可される値は以下の通りです：

- `none` - 自動注入を行いません。シェルを手動で構成して統合を有効にすることができます。

- `detect` - ファイル名に基づいてシェルを検出します。

- `bash`, `elvish`, `fish`, `zsh` - この特定のシェル注入スキームを使用します。

デフォルト値は `detect` です。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#shell-integration
# 機能強化のためのシェル統合自動注入を有効化 (default: detect)
shell-integration = detect
```
