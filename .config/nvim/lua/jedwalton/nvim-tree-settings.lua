require("nvim-tree").setup()
require("nvim-web-devicons").setup();


vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":NvimTreeFindFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>nr", ":NvimTreeRefresh<CR>", { noremap = true })
