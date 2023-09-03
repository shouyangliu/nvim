--require('stabline').setup()
require('stabline').setup {
    style       = "arrow", -- others: arrow, slant, bubble
    stab_left   = "┃",
    stab_right  = " >",

    -- fg       = Default is fg of "Normal".
    -- bg       = Default is bg of "Normal".
    inactive_bg = "#1e2127",
    inactive_fg = "#aaaaaa",
    -- stab_bg  = Default is darker version of bg.,

    font_active = "bold",
    exclude_fts = { 'NvimTree', 'dashboard', 'lir' },
    stab_start  = "s",   -- The starting of stabline
    stab_end    = "",
    numbers = function(bufn, n)
        return '*'..n..' '
    end
}

require("staline").setup {
	sections = {
		left = {
			'▊', ' ', { 'Evil', ' ' }, ' ', 'mode',         -- The mode and evil sign
			'file_size', ' ',                        -- Filesize
			{ 'StalineFile', 'file_name' }, ' '       -- Filename in different highlight
		},
		mid = { ' ', 'lsp_name' },                      -- "lsp_name" is still a little buggy
		right = {
			{ 'StalineEnc', vim.bo.fileencoding:upper() }, '  ',  -- Example for custom section
			{ 'StalineEnc', 'cool_symbol' }, ' ',                 -- the cool_symbol for your OS
			{ 'StalineGit', 'branch' }, ' ', '▊'                  -- Branch Name in different highlight
		}
	},
	defaults = {
		bg = "#202328",
		branch_symbol = " "
	},
	mode_colors = {
		n = "#38b1f0",
		i = "#9ece6a",       -- etc mode
	}
}
vim.cmd [[hi Evil        guifg=#f36365 guibg=#202328]]       -- Higlight for Evil symbol
vim.cmd [[hi StalineEnc  guifg=#7d9955 guibg=#202328]]       -- Encoding Highlight
vim.cmd [[hi StalineGit  guifg=#8583b3 guibg=#202328]]       -- Branch Name Highlight
vim.cmd [[hi StalineFile guifg=#c37cda guibg=#202328]]       -- File name Highlight
