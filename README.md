# ghostty-sakura-theme.nvim

English | [日本語](README.ja.md)

A Neovim port of [Ghostty](https://ghostty.org)'s built-in **Sakura** theme.

Every color in this colorscheme is taken verbatim from Ghostty's `Sakura` theme
file — the 16 ANSI colors plus `background`, `foreground`, `cursor-color`,
`cursor-text`, `selection-background` and `selection-foreground`. No color
outside of that palette is introduced, so Neovim and your terminal match.

## Palette

| Role | Color | | Role | Color |
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

## Requirements

- Neovim >= 0.8
- `termguicolors` (set automatically by the colorscheme)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yamato3010/ghostty-sakura-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

Then select it:

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

## Configuration

`setup()` is optional. Defaults:

```lua
require("sakura").setup({
  transparent = false,     -- use the terminal background instead of #18131e
  italic_comments = true,  -- render comments in italic
})
```

## What is covered

- Base Vim highlight groups (editor UI, messages, statusline, tabline, popup
  menu, diffs, spelling, search)
- Tree-sitter captures (`@*`)
- Diagnostics and LSP groups, including semantic tokens (`@lsp.type.*`)
- GitSigns

Other plugins fall back to their own defaults, which link to the base groups
above.

## Credits

The colors are not original to this repository. Their provenance is:

1. The **Sakura** color scheme was created by [@alicela1n](https://github.com/alicela1n)
   and contributed to iTerm2-Color-Schemes in
   [PR #230](https://github.com/mbadolato/iTerm2-Color-Schemes/pull/230) (2020-04-04).
2. [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) —
   MIT License, Copyright (c) 2011 to Present Mark Badolato.
3. [Ghostty](https://ghostty.org) sources its built-in themes from
   iTerm2-Color-Schemes. This plugin uses the values in Ghostty's `Sakura`
   theme file verbatim.

This repository contributes only the mapping of those colors onto Neovim
highlight groups.

## License

MIT
