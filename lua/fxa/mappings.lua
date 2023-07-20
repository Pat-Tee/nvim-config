vim.g.mapleader = " "
vim.keymap.set('', 'h', ';', {noremap = true})
vim.keymap.set('', 'j', 'h', {noremap = true})
vim.keymap.set('', 'k', 'j', {noremap = true})
vim.keymap.set('', 'l', 'k', {noremap = true})
vim.keymap.set('', ';', 'l', {noremap = true})
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- netrw menu
vim.keymap.set('i', 'ii', '<Esc>', {}) -- bind ii to Escape insert mode
vim.keymap.set('', '<leader><Tab>', '<C-w>w', {})
