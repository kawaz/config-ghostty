---
description: コマンドパレット用のカスタムエントリ
platform: all
default: ""
---

# command-palette-entry

**言語:** [English](../../en/config/command-palette-entry.en.md) | 日本語

## 説明

コマンドパレットへのカスタムエントリを設定します。

各エントリは、タイトル、対応するアクション、およびオプションの説明が必要です。各フィールドには、フィールド名、コロン（`:`）、および指定された値を付ける必要があります。アクションの構文は keybind アクションの構文と同じです。フィールド間のホワイトスペースは無視されます。

値にコンマまたは他の特殊文字を埋め込む必要がある場合、値を二重引用符で囲み、Zig 文字列リテラルとして解釈されます。これは、値の開始または終了時にホワイトスペースを含める場合にも便利です。詳細については、[Zig ドキュメント](https://ziglang.org/documentation/master/#Escape-Sequences) を参照してください。マルチライン文字列リテラルはサポートされていないことに注意してください。

フィールド名の周りに二重引用符を使用することはできません。

```ini
command-palette-entry = title:Reset Font Style, action:csi:0m
command-palette-entry = title:Crash on Main Thread,description:Causes a crash on the main (UI) thread.,action:crash:main
command-palette-entry = title:Focus Split: Right,description:"Focus the split to the right, if it exists.",action:goto_split:right
command-palette-entry = title:"Ghostty",description:"Add a little Ghostty to your terminal.",action:"text:\xf0\x9f\x91\xbb"
```

デフォルトでは、コマンドパレットはインタラクティブな設定で有用である可能性があるが、容易にアクセス可能またはメモリ可能なショートカットを持たないほとんどのアクションでプリロードされています。デフォルトエントリは、この設定を空の値に設定することでクリアできます：

```ini
command-palette-entry =
```

利用可能：1.2.0 以降
