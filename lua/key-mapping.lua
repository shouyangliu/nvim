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

map('i', '<C-e>', '<End>', opt)
map('i', '<C-h>', '<Home>', opt)
map('i', '<C-n>', '<Right>', opt)
map('i', '<C-p>', '<Left>', opt)
map('i', 'jk', '<Esc>', opt)

map('n', 'ee', '<End>', opt)
map('n', 'eh', '<Home>', opt)
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
map("n", '<Leader>t', ':NvimTreeToggle<CR>', opt)
 
--float term
map('n', 'tt', ':FloatermNew<CR>', opt)

--markdown
--map('n', '<C-p>', ':MarkdownPreview<CR>', opt)

--bufferline
map('n', '<A-n>', ':bn<CR>', opt)
map('n', '<A-p>', ':bp<CR>', opt)
map('n', 'GT', ':b#<CR>', opt)
map('n', 'b', ":b", opt)
map('n', 'bd', ":bd<CR>", opt)

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', ';d', builtin.lsp_definitions, {})
vim.keymap.set('n', ';r', builtin.lsp_references, {})

--wrap

