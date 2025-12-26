# linux-cgroup

**言語:** [English](../../en/config/linux-cgroup.en.md) | 日本語

## 説明

すべてのサーフェス（タブ、分割、ウィンドウ）を専用の Linux cgroup に入れます。

これにより、リソース管理をサーフェス単位の粒度で行うことができます。例えば、シェルプログラムが多くのメモリを使用している場合、Ghostty プロセス全体の代わりに、そのシェルのみが oom モニターによって殺されます。同様に、シェルプログラムが CPU を多く使用している場合、そのサーフェスのみが CPU スロットルされます。

これはスタートアップ時間を遅くする原因となります（約百ミリ秒）。そのため、デフォルト値は「single-instance」です。シングルインスタンスモードでは、Ghostty の 1 つのインスタンスのみが実行されているため（gtk-single-instance を参照）、スタートアップ時間は一度だけのコストです。さらに、シングルインスタンス Ghostty は多くのウィンドウ、タブなどを持つ可能性がはるかに高いため、cgroup の隔離は大きな利点です。

この機能は systemd を必要とします。systemd が利用できない場合、cgroup の初期化は失敗します。デフォルトでは、これは Ghostty の動作を妨げません（linux-cgroup-hard-fail を参照）。

有効な値は:

- `never` - cgroup を使用しません。
- `always` - 常に cgroup を使用します。
- `single-instance` - シングルインスタンスアプリケーションとして起動された Ghostty インスタンスに対してのみ cgroup を有効にします（gtk-single-instance を参照）。

## デフォルト

```conf
# https://github.com/kawaz/config-ghostty/blob/main/docs/ja/config/linux-cgroup.ja.md
# Linux cgroup リソース隔離 (default: never)
linux-cgroup = never
```

## 関連設定

- [`linux-cgroup-hard-fail`](linux-cgroup-hard-fail.ja.md)
- [`linux-cgroup-processes-limit`](linux-cgroup-processes-limit.ja.md)
- [`gtk-single-instance`](gtk-single-instance.ja.md)
