require('basic-setting')
require('key-mapping')
require('plugins')

--background
--vim.cmd "colorscheme catppuccin-mocha" --theme
vim.opt.showtabline=2
vim.opt.laststatus=3
vim.opt.termguicolors = true
vim.cmd "colorscheme tokyonight" --theme
--vim.cmd "hi Pmenu ctermfg=black ctermbg=111 guibg=#37b34c" 
--vim.cmd "hi PmenuSel ctermfg=white ctermbg=61 guibg=#555555 guifg=#ffffff"
--vim.cmd "hi Normal ctermfg=252 ctermbg=none guibg=none" --背景透明

require('plug/lspconfig')
require('plug/cmp') 
require('plug/leap')
--require('plug/airline')
require('plug/startup')
--require('plug/lualine')
require('plug/lsp_installer')
require('plug/treesitter')
require('plug/hlchunk')
require('plug/staline')
require('plug/gitsigns')
require('plug/scrollbar')
require('plug/git_blame')
require('plug/fold_cycle')
