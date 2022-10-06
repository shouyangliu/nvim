vim.cmd"let g:vimspector_enable_mappings = 'HUMAN'"
vim.cmd([[function! s:read_template_into_buffer(template)
    	execute '0r ~/.config/nvim/vimspector_json/'.a:template
    endfunction
    ]])
--vim.cmd"command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({ 'source': 'ls -1 ~/.config/nvim/vimspector_json/',  'down': 20, 'sink': function('<sid>read_template_into_buffer') })"
    
vim.cmd"noremap vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>"
vim.cmd"sign define vimspectorBP text=☛ texthl=Normal"
vim.cmd"sign define vimspectorBPDisabled text=☞ texthl=Normal"
vim.cmd"sign define vimspectorPC text=🔶 texthl=SpellBad"
