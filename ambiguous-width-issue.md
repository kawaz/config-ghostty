# Ghostty Ambiguous Width 問題まとめ

## 問題の概要

罫線文字（Box Drawing Characters）を使ったアスキーアートや表が、Ghosttyでは右に行くほどズレて表示される。

これは **East Asian Ambiguous Width** の扱いの違いによるもの。

## 技術的背景

### East Asian Width とは

Unicode では各文字に East Asian Width プロパティが定義されている：

| 値 | 意味 | セル幅 |
|----|------|--------|
| F (Fullwidth) | 全角 | 2 |
| H (Halfwidth) | 半角 | 1 |
| W (Wide) | 広い | 2 |
| Na (Narrow) | 狭い | 1 |
| **A (Ambiguous)** | **曖昧** | **1 or 2** |
| N (Neutral) | 中立 | 1 |

### 罫線文字の分類

Box Drawing Characters (U+2500-U+257F) は Unicode 仕様上 **Narrow (Na)** だが、
CJK環境では歴史的に **全角（2セル）** として扱われてきた。

```
文字: ─ │ ┌ ┐ └ ┘ ├ ┤ ┬ ┴ ┼
範囲: U+2500 - U+257F
East_Asian_Width: Na (Narrow)
```

### 問題の発生メカニズム

```
出力側（Claude等）: 罫線 = 1セル幅として整列
Ghostty: 罫線 = 2セル幅として表示
結果: 罫線が増えるほど右にズレる
```

## 表示サンプル

### 期待される表示（等幅フォント、罫線=1セル）

```
┌────────┬────────┐
│  項目  │   値   │
├────────┼────────┤
│  AAA   │  100   │
│  BBB   │  200   │
└────────┴────────┘
```

### Ghosttyでの実際の表示

（スクリーンショットを後で追加）

TODO:
- [ ] Ghosttyでの表示スクリーンショット
- [ ] iTerm2での表示スクリーンショット（比較用）
- [ ] その他ターミナルでの比較

## 他ターミナルでの対応状況

| ターミナル | 設定オプション | デフォルト |
|------------|---------------|-----------|
| **iTerm2** | Preferences → Profiles → Text → "Ambiguous characters are double-width" | OFF (1セル) |
| **Kitty** | `narrow_symbols` で特定コードポイントの幅を指定可能 | - |
| **mintty** | "Treat CJK ambiguous characters as wide" | 設定可能 |
| **PuTTY** | "Treat CJK ambiguous characters as wide" | 設定可能 |
| **WezTerm** | `treat_east_asian_ambiguous_as_wide` | false |
| **Alacritty** | なし（Unicode準拠） | 1セル |
| **Ghostty** | **なし** | 2セル？ |

### 参考リンク

- [Kitty narrow_symbols](https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.narrow_symbols)
- [WezTerm treat_east_asian_ambiguous_as_wide](https://wezfurlong.org/wezterm/config/lua/config/treat_east_asian_ambiguous_as_wide.html)
- [PuTTY CJK ambiguous width](https://documentation.help/PuTTY/config-cjk-ambig-wide.html)

## 関連するGhostty Discussion/Issue

- [#5588](https://github.com/ghostty-org/ghostty/discussions/5588) - `narrow_symbols` オプションの要望
- [#7204](https://github.com/ghostty-org/ghostty/discussions/7204) - ♥ 等の ambiguous 文字の幅問題
- [#6895](https://github.com/ghostty-org/ghostty/discussions/6895) - Kitty の Text Sizing Protocol への言及

## 現状のGhostty設定

`grapheme-width-method` という設定はあるが、これは：
- `unicode` - Unicode標準に従う
- `legacy` - wcswidth等のレガシー方式

**Ambiguous幅文字を 1 or 2 セルで扱うかの選択肢はない。**

---

# Issue 案（英語）

## Title

Feature Request: Add configuration option for East Asian Ambiguous Width characters

## Body

```markdown
### Problem

Box Drawing characters (U+2500-U+257F) and other East Asian Ambiguous Width characters
are rendered with inconsistent widths compared to other terminals, causing alignment
issues in ASCII art, tables, and TUI applications.

### Example

When displaying a simple table with box drawing characters:

```
┌────────┬────────┐
│  Item  │ Value  │
├────────┼────────┤
│  AAA   │  100   │
└────────┴────────┘
```

The alignment breaks progressively toward the right side of the display because:
- The source (e.g., CLI tools, AI assistants) assumes box drawing = 1 cell width
- Ghostty renders them as 2 cell width (or variable)

### Expected Behavior

A configuration option to control how ambiguous-width characters are handled, similar to:

- **iTerm2**: "Ambiguous characters are double-width" checkbox
- **WezTerm**: `treat_east_asian_ambiguous_as_wide = true/false`
- **Kitty**: `narrow_symbols` for fine-grained control
- **mintty/PuTTY**: "Treat CJK ambiguous characters as wide"

### Proposed Solution

Add a configuration option like:

```
# Option 1: Simple boolean
ambiguous-width = "single" | "double"

# Option 2: Follow locale (like some terminals do)
ambiguous-width = "single" | "double" | "auto"

# Option 3: Fine-grained control (like Kitty)
narrow-symbols = U+2500-U+257F,U+2580-U+259F
```

### Environment

- Ghostty version: (current)
- OS: macOS / Linux
- Locale: ja_JP.UTF-8 (or other CJK locales)

### Additional Context

This is a common issue in CJK environments where historically these characters
were rendered as full-width (2 cells) in legacy systems, but modern Unicode
specifies them as Narrow (Na) or Ambiguous (A).

Related discussions:
- #5588 (narrow_symbols option request)
- #7204 (ambiguous character width inconsistency)
```

---

# 追加調査TODO

- [ ] Ghosttyのデフォルトでの罫線文字の実際のセル幅を確認
- [ ] `LANG=en_US.UTF-8` vs `LANG=ja_JP.UTF-8` での挙動差を確認
- [ ] フォント別の挙動差を確認（JetBrains Mono, Menlo, etc.）
- [ ] 各ターミナルでの比較スクリーンショット作成
