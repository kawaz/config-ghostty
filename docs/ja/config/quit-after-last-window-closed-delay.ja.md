---
description: 最後のウィンドウが閉じられた後に終了するまでの遅延
platform: linux
default: ""
---

# quit-after-last-window-closed-delay

**言語:** [English](../../en/config/quit-after-last-window-closed-delay.en.md) | 日本語

## 説明

最後に開いているサーフェスが閉じられた後、Ghostty がどのくらいの間実行され続けるかを制御します。これは `quit-after-last-window-closed` が `true` に設定されている場合にのみ効果があります。

この設定の最小値は `1s` です。これより低い値は `1s` にクランプされます。

期間は、数字の後に時間単位が続く一連の数字として指定されます。数字と単位の間にはホワイトスペースが許可されます。各数字と単位は合計で総期間を形成するために追加されます。

許可された時間単位は以下の通りです：

- `y` - 365 SI 日、または 8760 時間、または 31536000 秒。うるう年またはうるう秒の調整は行われません。
- `d` - 1 つの SI 日、または 86400 秒。
- `h` - 1 時間、または 3600 秒。
- `m` - 1 分、または 60 秒。
- `s` - 1 秒。
- `ms` - 1 ミリ秒、または 0.001 秒。
- `us` または `µs` - 1 マイクロ秒、または 0.000001 秒。
- `ns` - 1 ナノ秒、または 0.000000001 秒。

例：
- `1h30m`
- `45s`

ユニットを繰り返すことができ、加算されます。これは `1h1h` が `2h` と同等であることを意味します。これは混乱しており、避けるべきです。将来の更新でこれが禁止される可能性があります。

最大値は `584y 49w 23h 34m 33s 709ms 551µs 615ns` です。これより大きい値は最大値にクランプされます。

デフォルトでは `quit-after-last-window-closed-delay` は設定されておらず、`quit-after-last-window-closed` が `true` の場合、最後のウィンドウが閉じられた直後に Ghostty が終了します。

Linux でのみ実装されています。

## デフォルト値

```conf
# https://ghostty.org/docs/config/reference#quit-after-last-window-closed-delay
# 最後のウィンドウが閉じられた後に終了するまでの遅延 (default: unset)
quit-after-last-window-closed-delay =
```
