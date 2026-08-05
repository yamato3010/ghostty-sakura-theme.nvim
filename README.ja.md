# ghostty-sakura-theme.nvim

[English](README.md) | 日本語

[Ghostty](https://ghostty.org) 組み込みの **Sakura** テーマを Neovim に移植したカラースキームです。

このカラースキームで使われている色は、すべて Ghostty の `Sakura` テーマファイルから
そのまま取っています（ANSI 16 色に加えて `background`、`foreground`、`cursor-color`、
`cursor-text`、`selection-background`、`selection-foreground`）。
パレット外の色は一切追加していないため、Neovim とターミナルの見た目が一致します。

## パレット

| 役割 | 色 | | 役割 | 色 |
| --- | --- | --- | --- | --- |
| `background` | `#18131e` | | `foreground` | `#dd7bdc` |
| `cursor-color` | `#ff65fd` | | `cursor-text` | `#24242e` |
| `selection-background` | `#c05cbf` | | `selection-foreground` | `#24242e` |
| black | `#000000` | | bright black | `#786d69` |
| red | `#d52370` | | bright red | `#f41d99` |
| green | `#41af1a` | | bright green | `#22e529` |
| yellow | `#bc7053` | | bright yellow | `#f59574` |
| blue | `#6964ab` | | bright blue | `#9892f1` |
| magenta | `#c71fbf` | | bright magenta | `#e90cdd` |
| cyan | `#939393` | | bright cyan | `#eeeeee` |
| white | `#998eac` | | bright white | `#cbb6ff` |

## 動作要件

- Neovim >= 0.8
- `termguicolors`（カラースキーム側で自動的に設定します）

## インストール

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yamato3010/ghostty-sakura-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

適用するには次のように指定します。

```lua
vim.cmd.colorscheme("sakura")
```

### LazyVim

```lua
{
  { "yamato3010/ghostty-sakura-theme.nvim", lazy = false, priority = 1000, opts = {} },
  { "LazyVim/LazyVim", opts = { colorscheme = "sakura" } },
}
```

## 設定

`setup()` の呼び出しは任意です。デフォルト値は以下のとおりです。

```lua
require("sakura").setup({
  transparent = false,     -- #18131e ではなくターミナルの背景を使う
  italic_comments = true,  -- コメントをイタリックで表示する
})
```

## 対応範囲

- Vim の基本ハイライトグループ（エディタ UI、メッセージ、ステータスライン、
  タブライン、ポップアップメニュー、diff、スペルチェック、検索）
- Tree-sitter のキャプチャ（`@*`）
- 診断（Diagnostics）と LSP のグループ（セマンティックトークン `@lsp.type.*` を含む）
- GitSigns

これ以外のプラグインは各プラグイン側のデフォルトにフォールバックし、
上記の基本グループにリンクされます。

## 謝辞・出典

配色はこのリポジトリのオリジナルではありません。出典は以下のとおりです。

1. **Sakura** カラースキームは [@alicela1n](https://github.com/alicela1n) 氏が作成し、
   [PR #230](https://github.com/mbadolato/iTerm2-Color-Schemes/pull/230)（2020-04-04）で
   iTerm2-Color-Schemes に提供されたものです。
2. [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) —
   MIT License, Copyright (c) 2011 to Present Mark Badolato
3. [Ghostty](https://ghostty.org) は組み込みテーマを iTerm2-Color-Schemes から
   取り込んでいます。本プラグインは Ghostty の `Sakura` テーマファイルの値を
   そのまま使用しています。

このリポジトリが提供しているのは、これらの色を Neovim のハイライトグループへ
割り当てた部分のみです。

## ライセンス

MIT
