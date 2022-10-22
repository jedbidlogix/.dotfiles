local map = vim.api.nvim_set_keymap

map('n', '<leader>p', '"+p', {noremap = true, silent = false})
map('v', '<leader>p', '"+p', {noremap = true, silent = false})
map('n', '<leader>P', '"+P', {noremap = true, silent = false})
map('v', '<leader>P', '"+P', {noremap = true, silent = false})
map('n', '<leader>y', '"+y', {noremap = true, silent = false})
map('v', '<leader>y', '"+y', {noremap = true, silent = false})
map('n', '<leader>Y', '"+y$', {noremap = true, silent = false})


map('n', '<leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('v', '<leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>t', ':NvimTreeFocus<CR>', {noremap = true, silent = false})
map('v', '<leader>t', ':NvimTreeFocus<CR>', {noremap = true, silent = false})



-- " Fast saving
-- nmap <leader>w :w!<cr>

-- Smart way to move between windows
map('n', '<C-h>', '<C-W>h', {noremap = true, silent = false})
map('n', '<C-j>', '<C-W>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-W>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-W>l', {noremap = true, silent = false})



