local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Vertical splitter
keymap("n", "<leader>v", ":vsplit<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- keymap for easy navigation through tabs
keymap("n", "<TAB>",   ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)
keymap("n", "<S-h>",   ":bprevious<CR>", opts)
keymap("n", "<S-l>",   ":bnext<CR>", opts)

-- Make current file executable using Eunuch.
keymap('n', '<A-e>', [[:!chmod u+x %<CR>:set filetype=sh<CR>:echo "File is now executable!"<CR>]], opts)
keymap('n', '<A-e>', [[:!chmod u+x %<CR>:set filetype=py<CR>:echo "File is now executable!"<CR>]], opts)

-- Lookup documentation for current word on DevDocs
keymap('n', 'gm', '<Plug>(devdocs-under-cursor)', {})

vim.g.devdocs_filetype_map = {
  ['python'] = 'python',
  ['javascript.js'] = 'react',
  ['java'] = 'openjdk',
  ['lua'] = 'lua',
  ['yaml'] = 'yaml',
  ['css'] = 'css',
  ['html'] = 'html',
  ['terraform'] = 'terraform',
}

-- Snippets.
keymap('n', 'sc', ':call ShowColours()<CR>', opts)
keymap('n', 'sC', ':call ShowChars()<CR>', opts)
keymap('n', 'sl', ':call SnippetList()<CR>', opts)
keymap('n', 'sL', ':LuaSnipListAvailable<CR>', opts)
keymap('n', 'ss', ':call SnippetSave()<CR>', opts)
keymap('n', 'se', ':call SnippetEdit()<CR>', opts)
keymap('n', 'gB', ':call FigletCurrentLine()<CR>', opts)
keymap('n', 'ge', ':call DeleteEndingWhiteSpace()<CR>', opts)
keymap('n', 'gh', ':call OpenHelpAndCheatSheets()<CR>', opts)

-- Push line
keymap('n', '<A-p>', ':call PushLine()<CR>', opts)

-- Saves a few key presses.
-- nnoremap ; :
keymap('n', ';', ':', {})

-- Highlight column in CSV
vim.cmd('command! -nargs=1 Csv call CSVH(<args>)')

-- " SQL and Java flipping.
-- vnoremap <silent> <A-s> :call SqlFlip()<CR>
-- " nmap <silent> <leader>F :call PrettyPrintFile()<CR>

-- Run macro q with just typing Q.
keymap('n', 'Q', '@q', opts)

-- Keymap to open or close folds with F2
keymap('n', '<F2>', 'za', opts)

keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Jump
keymap('n', 'gj', ':call JumpToSelection()<CR>', opts)

-- Function keys.
-- keymap('n', '<F1>', ':Cheat<CR>', opts)
-- keymap('n', '<F2>', ':call FoldingToggle()<CR>', {})
-- keymap('n', '<F3>', ':call ToggleAll()<CR>', {})
keymap('n', '<F4>', ':NvimTreeToggle<CR>', opts)
-- F5 reserved for kitty, open selected.
-- Use to replace last :s command on a range
-- * = last range.
-- & = last s/foo/bar/
keymap('n', '<F6>', ':*&<CR>', opts)
-- Diff current buffer and the next.
keymap('n', '<F7>', ':vsplit<CR>:bnext<CR>:windo diffthis<CR>', opts)
keymap('n', '<F8>', ':Jaq<CR>', opts)
keymap('n', '<F9>', ':Telescope find_files<CR>', opts)
-- F10 reserved for kitty, open new terminal.
-- F11 reserved for kitty, full screen.
keymap('n', '<F12>', ':SymbolsOutline<CR>', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Terminal
keymap("n", "<A-1>", ":ToggleTerm size=12 direction=horizontal<CR>", opts)
