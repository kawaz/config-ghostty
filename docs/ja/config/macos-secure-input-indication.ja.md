---
description: セキュアインプットが有効になったときにグラフィカル表示を示す
platform: macos
default: true
---

# macos-secure-input-indication

**言語:** [English](../../en/config/macos-secure-input-indication.en.md) | 日本語

## 説明

true の場合、Ghostty はセキュアインプットが有効になったときにグラフィカルなインジケーション (表示) を示す。このインジケーションは通常、セキュアインプットが有効になったことを知るために推奨される。

通常、セキュアインプットは、パスワードプロンプトが表示されるか、手動で (通常は一時的に) 有効になった場合のみアクティブになる。ただし、セキュアインプットが常に有効になっている場合、インジケーションは気を散らすことができ、無効にしたい場合がある。

## デフォルト

```conf
# https://ghostty.org/docs/config/reference#macos-secure-input-indication
# セキュアインプットが有効になったときにグラフィカル表示を示す (デフォルト: true)
macos-secure-input-indication = true
```

## 関連設定

- [`macos-auto-secure-input`](macos-auto-secure-input.ja.md)
- [`toggle_secure_input`](../actions/toggle_secure_input.ja.md)
