---
description: ターミナルのフォントファミリー
platform: all
default:
---

# font-family

**Language:** [English](../../en/config/font-family.en.md) | 日本語

## Description

使用するフォントファミリー。

CLI で有効な値のリストを生成できます:

```
ghostty +list-fonts
```

この設定は複数回繰り返してリストすることができます。主フォントで要求されたコードポイントが利用できない場合のフォールバック フォントを指定します。これは、複数の言語、記号フォントなどの場合に特に便利です。

絵文字に関する注記: macOS では Ghostty はデフォルトで常に Apple Color Emoji を使用し、Linux では常に Noto Emoji を使用します。ここで絵文字グリフを含むフォント ファミリーを指定することで、この動作をオーバーライドできます。

特定のスタイル(太字、斜体、太字斜体)を明示的に設定する必要はありません。スタイルが設定されていない場合、通常のスタイル(font-family)がスタイル変種を検索されます。スタイル変種が見つからない場合、Ghostty は通常のスタイルを使用します。これにより、太字などのスタイルを取得するためだけに異なるフォント ファミリーにフォールバックすることを防ぎます。これは、スタイルのフォント ファミリーを明示的に指定した場合にも適用されます。たとえば、`font-family-bold = FooBar` を設定し、「FooBar」が見つからない場合、Ghostty は `font-family` に設定されているフォントを太字スタイルに使用します。

最後に、サポートされていない場合は、いくつかのスタイルが合成される場合があります。たとえば、フォントにイタリック スタイルがなく、代替イタリック フォントが指定されていない場合、Ghostty は通常のスタイルに傾斜を適用することで、イタリック スタイルを合成します。これらの合成されたスタイルを無効にしたい場合は、`font-style` 設定を使用できます。

`font-style` 設定セットを使用してスタイルを完全に無効にできます。詳細は `font-style` のドキュメントを参照してください。

フォールバックを追加するのではなく、前の設定値を上書きしたい場合は、値を `""` (空の文字列)として指定してリストをリセットしてから、新しい値を設定します。例:

```
font-family = ""
font-family = "My Favorite Font"
```

これらを CLI 引数として設定すると、設定ファイルで設定された値が自動的にクリアされるため、新しい値を設定する前に `--font-family=""` を指定する必要はありません。設定ファイルで設定ファイルで設定された値をクリアしたい場合、または CLI で CLI で設定された値をクリアしたい場合にのみ、この方法を使用する必要があります。

## Default

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/font-family.ja.md
# ターミナルのフォントファミリー (default: )
font-family =
```

## Related

- [font-family-bold](font-family-bold.ja.md)
- [font-family-italic](font-family-italic.ja.md)
- [font-family-bold-italic](font-family-bold-italic.ja.md)
