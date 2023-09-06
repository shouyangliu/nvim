require('leap').add_default_mappings()
require('leap').opts.highlight_unlabeled_phase_one_targets = true
--vim.keymap.set({'x','o','n'},'m','<Plug>(leap-forward-to)')
--vim.keymap.set({'x','o','n'},'M','<Plug>(leap-backward-to)')

vim.keymap.set({'x', 'o', 'n'}, 'm', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
