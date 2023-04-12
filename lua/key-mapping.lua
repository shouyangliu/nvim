vim.g.mapleader = " "
vim.g.maploaclleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map('i', '<A-">', '""<Left>', opt)
map('i', "<A-'>", "''<Left>", opt)
map('i', '<A-(>', '()<Left>', opt)
map('i', '<A-[>', '[]<Left>', opt)
map('i', '<A-{>', '{}<Left>', opt)
map('i', '<A-<>',  '<><Left>', opt)

map('n', 'wq', ':wq<CR>', opt)
map('n', 'ww', ':w<CR>', opt)
map('n', 'qq', ':q<CR>', opt)

map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

map('i', '<A-j>', '<Esc>', opt)

map('i', '<A-e>', '<End>', opt)
map('i', '<A-b>', '<Home>', opt)
map('i', '<A-m>', '<Right>', opt)
map('i', '<A-v>', '<Left>', opt)
map('i', 'jk', '<Esc>', opt)

--split
map('n', 'sv', ':vsp<CR>', opt)
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)
map("n", "<S-t>", ":sp term://$SHELL<CR>", opt)

--resize the window
map('n', '<A-Up>', ':resize -2<CR>', opt)
map('n', '<A-Down>', ':resize +2<CR>', opt)
map('n', '<A-Left>', ':vertical resize -2<CR>', opt)
map('n', '<A-Right>', ':vertical resize +2<CR>', opt)

--nvim-tree
map("n", '<A-t>', ':NvimTreeToggle<CR>', opt)
 
--float term
map('n', 'tt', ':FloatermNew<CR>', opt)

--markdown
map('n', '<C-p>', ':MarkdownPreview<CR>', opt)

--bufferline
map('n', '<A-n>', ':bn<CR>', opt)
map('n', '<A-p>', ':bp<CR>', opt)
map('n', 'GT', ':b#<CR>', opt)
map('n', 'b', ":b", opt)


