local map = vim.api.nvim_set_keymap

-- Better copy and paste
map('n', '<leader>p', '"+p', {noremap = true, silent = false})
map('v', '<leader>p', '"+p', {noremap = true, silent = false})
map('n', '<leader>P', '"+P', {noremap = true, silent = false})
map('v', '<leader>P', '"+P', {noremap = true, silent = false})
map('n', '<leader>y', '"+y', {noremap = true, silent = false})
map('v', '<leader>y', '"+y', {noremap = true, silent = false})
map('n', '<leader>Y', '"+y$', {noremap = true, silent = false})

map('n', '<leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('v', '<leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>t', ':NvimTreeFocus<CR>', {noremap = true, silent = false})
map('v', '<leader>t', ':NvimTreeFocus<CR>', {noremap = true, silent = false})


-- Undotree
map('n', '<F5>', ':UndotreeToggle<CR>', {noremap = true, silent = false})
map('v', '<F5>', ':UndotreeToggle<CR>', {noremap = true, silent = false})

-- " Fast saving
-- nmap <leader>w :w!<cr>

-- Smart way to move between windows
map('n', '<C-h>', '<C-W>h', {noremap = true, silent = false})
map('n', '<C-j>', '<C-W>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-W>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-W>l', {noremap = true, silent = false})

map('n', '<leader>h', '<C-W>h', {noremap = true, silent = false})
map('n', '<leader>j', '<C-W>j', {noremap = true, silent = false})
map('n', '<leader>k', '<C-W>k', {noremap = true, silent = false})
map('n', '<leader>l', '<C-W>l', {noremap = true, silent = false})

-- Lsp Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- Telescope  
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-p>', builtin.grep_string, {})


