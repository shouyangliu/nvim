vim.g.mapleader = " "
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
map('n', '<C-p>', ':MarkdownPreview<CR>', opt)

--bufferline
map('n', 'gt', ':bn<CR>', opt)
map('n', 'Gt', ':bp<CR>', opt)
map('n', 'GT', ':b#<CR>', opt)
map('n', 'b', ":b", opt)

--debugger
map('n', '<Leader>db', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opt)
map('n', '<Leader>dB', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opt)
map('n', "<Leader>dr", 'lua require"dap".repl.open()<cr>', opt)
map('n', '<Leader>dl', 'lua require"dap".run_last()<cr>', opt)
map('n', '<F10>', '<cmd>lua require"plug/dap/dap-util".reload_continue()<cr>', opt)
map('n', '<F4>', '<cmd>lua require"dap".terminate()<cr>', opt)
map('n', '<F5>', '<cmd>lua require"dap".continue()<cr>', opt)
map('n', '<F6>', '<cmd>lua require"dap".steo_over()<cr>', opt)
map('n', '<F7>', '<cmd>lua require"dap".steo_into()<cr>', opt)
map('n', '<F8>', '<cmd>lua require"dap".steo_out()<cr>', opt)
map('n', 'K', '<cmd>lua require"dapui".eval()<cr>', opt)
