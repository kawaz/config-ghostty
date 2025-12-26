# clipboard-paste-protection

**言語:** [English](../../en/config/clipboard-paste-protection.en.md) | 日本語

## 説明

安全でないように見えるテキストを貼り付ける前に確認を要求します。これは、ユーザーが改行を含むテキストを貼り付けることで安全でないコマンドを誤って実行する可能性がある「コピー/ペースト攻撃」を防ぐのに役立ちます。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/clipboard-paste-protection.ja.md
# 安全でないペーストの確認を要求 (default: true)
clipboard-paste-protection = true
```

## 関連設定

- [`clipboard-paste-bracketed-safe`](clipboard-paste-bracketed-safe.ja.md)
