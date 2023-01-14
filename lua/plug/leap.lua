require('leap').add_default_mappings()
require('leap').opts.highlight_unlabeled_phase_one_targets = true
vim.keymap.set({'x','o','n'},'s','<Plug>(leap-forward-to)')
vim.keymap.set({'x','o','n'},'S','<Plug>(leap-backward-to)')
