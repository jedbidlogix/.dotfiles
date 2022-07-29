require("nvim-tree").setup()
require("nvim-web-devicons").setup();


vim.api.nvim_set_keymap("n", "<Leader>nt", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":NvimTreeFocus<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>nr", ":NvimTreeRefresh<CR>", { noremap = true })

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
