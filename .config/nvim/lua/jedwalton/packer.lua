-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Git
    use("TimUntersberger/neogit")

    -- Colorsheme
    use 'gruvbox-community/gruvbox'
  
    -- Trees
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'

    -- Functional
    use 'tpope/vim-fugitive'
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'szw/vim-maximizer'

    -- Formatting
    use("sbdchd/neoformat")

    -- LSP
    use "williamboman/nvim-lsp-installer"
    use "neovim/nvim-lspconfig"


    use 'nvim-lua/lsp-status.nvim'
    -- Java
    use { "mfussenegger/nvim-jdtls", ft = { "java" }}
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")

    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use("tzachar/cmp-tabnine", { run = "./install.sh" })

    -- Snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    
    -- Debugging
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- Telescope
    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- HTTP
    use 'NTBBloodbath/rest.nvim'

    --Random
    use 'tpope/vim-commentary'
    use("mbbill/undotree")

end)
