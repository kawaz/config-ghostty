---
description: ベル通知機能を設定
platform: all
default: no-system,no-audio,attention,title,no-border
---

# bell-features

**Language:** [English](../../en/config/bell-features.en.md) | 日本語

## 説明

ベル サポートがランタイムで利用可能な場合に有効にするベル機能。すべての機能がすべてのランタイムで利用可能なわけではありません。形式は、コンマで区切られた有効にする機能のリストです。機能の前に `no-` を付ける場合は、その機能は無効になります。機能を省略すると、その機能のデフォルト値が使用されます。

有効な値は：

- `system` - 組み込みシステム機能を使用してユーザーに通知するようにシステムに指示します。これにより、視聴覚効果、通知、または完全に異なるものが発生する可能性があります。これらの効果を変更するには、システム設定を変更する必要があります。たとえば、GNOME の "Sound > Alert Sound" 設定、または KDE Plasma の "Accessibility > System Bell" 設定。（GTK のみ）
- `audio` - カスタムサウンドを再生します。（GTK のみ）
- `attention` *(デフォルトで有効)* - Ghostty がフォーカスを失った場合、ユーザーの注意を求め、フォーカスを再度受け取るまで続けます。macOS では、アプリ アイコンがドック内で一度バウンスします。Linux では、デスクトップ環境および/またはウィンドウ マネージャー/コンポジターの動作に基づいて異なります：
  - KDE では、タスク バーのデスクトップ アイコンの背景が強調表示されます。
  - GNOME では、クリックすると Ghostty ウィンドウがフォーカスされる通知を受け取ることができます。
  - Sway では、ウィンドウが明らかに色分けされたボーダーで装飾される可能性があります。
  - 他のシステムでは、これはまったく効果がない場合があります。
- `title` *(デフォルトで有効)* - ベル絵文字（🔔）を、ターミナルが再フォーカスされるか（キーボード入力など）と対話するまで、アラート サーフェスのタイトルに付加します。
- `border` - ターミナルが再フォーカスされるか（キーボード入力など）と対話するまで、アラート サーフェスの周りにボーダーを表示します。GTK のみ。

例： `audio`、`no-audio`、`system`、`no-system`

利用可能: 1.2.0 以降

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/bell-features.ja.md
# ベル通知機能を設定 (default: no-system,no-audio,attention,title,no-border)
bell-features = no-system,no-audio,attention,title,no-border
```
