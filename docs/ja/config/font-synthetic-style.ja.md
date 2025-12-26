---
description: 利用できないフォントスタイルを合成するかどうかを制御する
platform: all
default: bold,italic,bold-italic
---

# font-synthetic-style

**言語:** [English](../../en/config/font-synthetic-style.en.md) | 日本語

## 説明

指定されたフォントファミリーで要求されたスタイルが利用できない場合、Ghostty がスタイルを合成する必要があるかどうかを制御します。

Ghostty は、フォントに特定のスタイルがない場合、ボールド、イタリック、ボールドイタリック スタイルを合成できます。ボールドの場合、グリフの周囲に様々な厚さのアウトラインを描画することで実現します。イタリックの場合、グリフにスラント角を適用することで実現します。ボールドイタリックの場合、これら両方が適用されます。

合成されたスタイルは完璧ではなく、ネイティブにスタイルを持つフォントほど見栄えは良くありません。ただし、フォントにスタイルがない場合に、スタイル付きテキストを提供するのに便利です。

これを "false" または "true" に設定して、合成スタイルを完全に無効化または有効化できます。"no-bold"、"no-italic"、"no-bold-italic" を使用して、特定のスタイルを無効化できます。複数のスタイルを無効化するには、コンマで区切って指定できます。例えば、"no-bold,no-italic"。

利用可能なスタイルキーは以下の通りです：`bold`、`italic`、`bold-italic`。

合成スタイルが無効化されている場合、要求されたスタイルが利用できなければ通常のスタイルが代わりに使用されます。フォントに要求されたスタイルがある場合、スタイルが合成ではないため、そのままフォントが使用されます。

**注意:** `bold` または `italic` を無効化しても `bold-italic` を無効化しないという単純な間違いをしやすいです。`bold` または `italic` だけを無効化しても、`bold-italic` スタイルのどちらも無効化されません。`bold-italic` を無効化したい場合は、明示的に無効化する必要があります。`bold-italic` を部分的に無効化することはできません。

デフォルトでは、合成スタイルは有効化されています。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-synthetic-style.ja.md
# 利用できないフォントスタイルを合成するかどうかを制御する (default: bold,italic,bold-italic)
font-synthetic-style = bold,italic,bold-italic
```

## 関連設定

- [`font-family`](font-family.ja.md)
- [`font-family-bold`](font-family-bold.ja.md)
- [`font-family-italic`](font-family-italic.ja.md)
- [`font-family-bold-italic`](font-family-bold-italic.ja.md)
