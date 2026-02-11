# jj メモ（v0.38.0）

## 基本概念

- 全変更が自動的に @ コミットに入るのが大前提（ステージング概念なし）
- @コミット ≒ 自動スナップショット機能付きワーキングツリー（編集するたびに自動amend）
- `jj new` — 新しい空コミットを作る
- `jj edit` — 指定コミットを編集する ≒ git switch

## Git → jj 対応表

| Git | jj | 備考 |
|---|---|---|
| `git status` | `jj st` | |
| `git log` | `jj log` | |
| `git diff` | `jj diff` | |
| `git add` | 不要 | 自動追跡 |
| `git add . && git commit -m MSG` | `jj commit -m MSG` | |
| `git commit --amend -m MSG` | `jj describe -m MSG` | メッセージ変更のみ |
| `git commit -m MSG` | `jj describe -m MSG && jj new` | describe + new の2段階 |
| `git add -p && git commit` | `jj split` / `jj commit -i` | |
| `git branch` | `jj bookmark` (`jj b`) | |
| `git push` | `jj git push` | |
| `git fetch`/`pull` | `jj git fetch` | pull = fetch + rebase |
| `git checkout`/`switch` | `jj new` / `jj edit` | new=新コミット, edit=既存編集 |
| `git rebase` | `jj rebase` | 子孫は自動追従 |
| `git stash` | 不要 | 作業内容は自動で@に保存 |
| `git cherry-pick` | `jj duplicate` | `--onto`で挿入先指定可 |
| `git revert` | `jj revert` | 挿入先指定が必須(`--onto`/`-A`/`-B`) |
| `git reset --hard HEAD~1` | `jj abandon` | コミット破棄 |
| `git reflog` | `jj op log` | 操作ログ |
| `git blame FILE` | `jj file annotate FILE` | |
| `git grep PATTERN` | `jj file search PATTERN` | |
| `git restore -- FILE` | `jj restore FILE` | `--from @-` が省略時デフォルト |
| `git bisect` | `jj bisect run CMD` | 自動bisectのみ |

## jj 固有コマンド

| コマンド | 概要 |
|---|---|
| `jj absorb` | @の変更をhunk単位で祖先コミットへ自動分配 |
| `jj evolog` | changeの変遷履歴 |
| `jj parallelize` | 直列コミットを並列（兄弟）に変換 |
| `jj metaedit` | 内容を変えずメタデータだけ変更 |
| `jj diffedit` | diff editorでコミット内容を直接編集 |
| `jj fix` | 設定済みフォーマッタを一括適用 |

## REVSET 表現

| jj | Git相当 | 備考 |
|---|---|---|
| `@` | `HEAD` | ワーキングコピーコミットそのもの |
| `@-` | `HEAD~1` | 親コミット |
| `@--` | `HEAD~2` | 2つ前 |

## コミット作成/分割

### インタラクティブ
`jj split -i` / `jj commit -i` — TUIでhunk選択 → EDITOR起動
- `split` は2回description編集（`-m MSG`は1つ目に適用、2つ目は元descを維持）

### 非インタラクティブ
```bash
jj commit -m "msg" foo bar           # 指定ファイルをコミット、残りは新@へ
jj split  -m "msg" foo bar           # 同上だがbookmark挙動が異なる
jj commit -m MSG 'glob:src/**'       # filesetパターン
jj commit -m MSG '~foo'              # foo以外
```

### commit vs split の bookmark 挙動
- `split` — bookmarkがあれば子（残り側）に移動
- `commit` — bookmarkは移動しない

### split の挿入オプション
```bash
jj split --onto DEST       # 選択部分をDESTの子として挿入
jj split -A AFTER          # AFTERの後ろに挿入
jj split -B BEFORE         # BEFOREの前に挿入
jj split --parallel        # 親子ではなく兄弟に分割
```

## squash / absorb

```bash
jj squash                  # @の変更を親にまとめる（splitの逆）
jj squash -i               # インタラクティブに選択
jj squash --from A --into B  # AからBへ移動
jj absorb                  # @の各hunkを最後にその行を変更した祖先へ自動分配
```

## 操作の取り消し

```bash
jj undo                    # 直前の操作を取り消す
jj redo                    # undoの取り消し
jj op restore OP_ID        # 特定操作時点にリポジトリ全体を戻す
jj op log                  # 操作ログ
jj op show -p              # 最新操作の詳細（パッチ付き）
```

## op log からファイル復元

snapshotはjjコマンド実行時に記録される。コミット内の中間状態も取り出せる。

```bash
# snapshot の op-id だけ抽出
jj op log --no-graph -T 'if(self.snapshot(), self.id() ++ "\n")'

# 最後にFILEが存在していたsnapshotから復元
jj op log --no-graph -T 'if(self.snapshot(), self.id() ++ "\n")' | while read -r op; do
  if jj --at-op="$op" file show FILE >/dev/null 2>&1; then
    jj --at-op="$op" file show FILE > FILE
    break
  fi
done
```

注意: jjコマンドを挟まずにファイルを編集→削除した場合、中間状態はsnapshotに記録されない。

---

## Fileset 言語

ファイル指定引数で使える式言語。`jj diff`, `jj split`, `jj commit`, `jj file list` 等で利用可能。

### パターン種別
| パターン | 説明 |
|---|---|
| `"path"` | cwd相対のプレフィックスマッチ（デフォルト） |
| `file:"path"` | 完全一致（ディレクトリ再帰なし） |
| `glob:"pattern"` | Unix glob（`*`, `**`, `?`, `[...]`） |
| `root:"path"` | ワークスペースルート相対 |

末尾に `-i` で大文字小文字無視: `glob-i:"*.TXT"`, `cwd-glob:"..."` でcwd基準glob。

### 演算子（結合強度順）
```
~x          # 否定（x以外の全ファイル）
x & y       # 積集合
x ~ y       # 差集合（xからyを除く）
x | y       # 和集合
```

### 例
```bash
jj diff '~Cargo.lock'                  # Cargo.lock以外のdiff
jj file list 'src ~ glob:"**/*.rs"'    # src/配下の.rs以外
jj split 'glob:**/*.ts | glob:**/*.tsx' # TS/TSXファイルだけ分割
```

## Revset 言語

リビジョン指定引数（`-r`等）で使える式言語。

### 演算子
| 演算子 | 説明 | 例 |
|---|---|---|
| `x-` | 親 | `@-`（親）, `@--`（祖父母） |
| `x+` | 子 | `@+` |
| `x::y` | xからyへの範囲（両端含む） | `trunk()::@` |
| `x..y` | xの祖先を除くyの祖先 | `trunk()..@` |
| `::x` | xの全祖先 | `::@` |
| `x::` | xの全子孫 | `@::` |
| `~x` | 否定 | `~merges()` |
| `x & y` | 積集合 | `mine() & mutable()` |
| `x \| y` | 和集合 | `bookmarks() \| tags()` |

### 主要な関数
```
# ナビゲーション
parents(x)  children(x)  ancestors(x)  descendants(x)
heads(x)  roots(x)  connected(x)  fork_point(x)

# リファレンス
bookmarks([pattern])  remote_bookmarks([pattern])  tags([pattern])
trunk()  working_copies()

# メタデータフィルタ
description(pattern)  author(pattern)  mine()
author_date(after:"2025-01-01")  committer_date(before:"1 week ago")
files(fileset)  diff_lines(text, [files])

# 状態フィルタ
empty()  merges()  conflicts()  divergent()  signed()

# 集合操作
mutable()  immutable()  visible_heads()  present(x)
latest(x, [count])  exactly(x, count)
```

文字列パターン: `exact:"str"`, `glob:"pat"`, `regex:"pat"`, `substring:"str"`（末尾`-i`で大文字小文字無視）

### 例
```bash
jj log -r 'mine() & mutable()'           # 自分の変更可能なコミット
jj log -r 'description(regex:"fix")'      # descriptionに"fix"を含む
jj log -r 'ancestors(@, 5)'               # @から5世代前まで
jj log -r 'trunk()..@ & ~empty()'         # trunk以降の空でないコミット
jj rebase -r 'descendants(@-)' -d trunk() # @-の子孫をtrunkにrebase
```

## Template 言語

`-T`オプションで出力形式をカスタマイズする式言語。`jj log`, `jj show`, `jj op log` 等で利用可能。

### 演算子
```
x ++ y       # テンプレート結合
x.method()   # メソッド呼び出し
!x  &&  ||   # 論理演算（短絡評価）
==  !=        # 等値比較
+  -  *  /  % # 整数演算
```

### 主要なキーワード（Commit）
`commit_id`, `change_id`, `description`, `author`, `committer`, `bookmarks`, `tags`, `working_copies`, `empty`, `conflict`, `divergent`, `hidden`, `immutable`

### 主要な関数
```
if(cond, then[, else])     # 条件分岐
coalesce(x, y, ...)        # 最初のnon-emptyを返す
separate(sep, values...)   # non-emptyをsepで結合
surround(prefix, suffix, x) # xが非空ならprefix+x+suffix
label(name, content)       # カラーリング用ラベル
indent(prefix, content)    # インデント
fill(width, content)       # 折り返し
stringify(x)  json(x)      # 文字列/JSON変換
```

### 主要なメソッド
```
# CommitId/ChangeId
.short([len])  .shortest([min])  .hex()

# String
.len()  .contains(s)  .first_line()  .lines()  .upper()  .lower()
.starts_with(s)  .ends_with(s)  .substr(start, end)  .trim()

# Signature
.name()  .email()  .timestamp()

# Timestamp
.ago()  .format(fmt)  .utc()  .local()

# List
.len()  .join(sep)  .map(|x| template)  .filter(|x| pred)
```

### 例
```bash
# change-id と description の1行目だけ
jj log --no-graph -T 'change_id.short() ++ " " ++ description.first_line() ++ "\n"'

# commit-id を全桁表示
jj log --no-graph -T 'commit_id.hex() ++ "\n"'

# 作者名と相対時刻
jj log --no-graph -T 'author.name() ++ " (" ++ author.timestamp().ago() ++ ")\n"'

# bookmarkがあれば表示、なければスキップ
jj log -T 'surround("[", "] ", bookmarks) ++ description.first_line() ++ "\n"'

# op logからsnapshot IDだけ取得
jj op log --no-graph -T 'if(self.snapshot(), self.id() ++ "\n")'
```
