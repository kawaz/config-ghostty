---
description: alt/option+click を使ってプロンプトでカーソルを移動
platform: all
default: true
---

# cursor-click-to-move

**Language:** [English](../../en/config/cursor-click-to-move.en.md) | 日本語

## 説明

Linux で `alt+click` と macOS で `option+click` を使って、プロンプトでカーソルを移動できる機能を有効にします。

この機能にはシェル統合が必要です（特に `OSC 133` 経由のプロンプトマーキング）であり、プライマリスクリーンモードでのみ機能します。vim のような代替スクリーンアプリケーションは通常、この機能の独自バージョンを持っていますが、この設定はそれを制御しません。

この機能は、希望する位置を一連の合成矢印キー移動に変換することで機能することに注意する必要があります。そのため、エッジケースの周りの奇妙な動作は想定されます。これは残念ながら、この機能を実装する他の方法がないため、ターミナル全体でこの機能の実装方法です。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/cursor-click-to-move.ja.md
# プロンプトでカーソル移動を有効化 (default: true)
cursor-click-to-move = true
```

## 関連

- [shell-integration](shell-integration.ja.md)
- [cursor-style](cursor-style.ja.md)
