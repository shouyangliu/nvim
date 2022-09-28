vim.g.mapleader = ","
vim.g.maploaclleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map('i', '""', '""<Left>', opt)
map('i', "''", "''<Left>", opt)
map('i', '()', '()<Left>', opt)
map('i', '[]', '[]<Left>', opt)
map('i', '{}', '{}<Left>', opt)
map('i', '<>',  '<><Left>', opt)

map('n', 'wq', ':wq<CR>', opt)
map('n', 'ww', ':w<CR>', opt)
map('n', 'qq', ':q<CR>', opt)

map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

--split
map('n', 'sv', ':vsp<CR>', opt)
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)

--nvim-tree
map("n", '<Leader>t', ':NvimTreeToggle<CR>', opt)

--float term
map('n', 'tt', ':FloatermNew<CR>', opt)

--markdown
map('n', '<C-p>', ':MarkdownPreview<CR>', opt)
