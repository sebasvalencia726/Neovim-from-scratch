require "user.impatient"
require "user.plugins"
require "config.options"
require "config.keymaps"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvimtree"
require "user.bufferline"
require "user.colors"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "config.autocommands"
require "user.illuminate"
require "user.jaq"
require "user.tmux-navigation"
require "user.colorizer"
require "user.neoscroll"
require "user.bqf"
require "user.signature"
require "user.numb"
require "user.matchup"
require "user.neogen"
require "user.docs-view"
require "user.peek"
require "user.twilight"

vim.cmd('source ~/.config/nvim/lua/config/functions.vim')
require("luasnip/loaders/from_vscode").load { paths = { "~/.config/nvim/lua/snippets" } }
