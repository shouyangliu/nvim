require('basic-setting')
require('key-mapping')
require('plugins')

--background
vim.cmd "colorscheme seoul256" --theme
vim.cmd "hi Pmenu ctermfg=black ctermbg=111 guibg=#444444" 
vim.cmd "hi PmenuSel ctermfg=white ctermbg=61 guibg=#555555 guifg=#ffffff"
vim.cmd "hi Normal ctermfg=252 ctermbg=none" --背景透明

require('plug/lspconfig')
require('plug/cmp')
require('plug/nvim-tree')
require('plug/leap')
require('plug/airline')


