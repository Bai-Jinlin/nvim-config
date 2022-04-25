local packer=require('packer')
packer.startup(function()
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'shaunsingh/solarized.nvim'
    use({'neovim/nvim-lspconfig','williamboman/nvim-lsp-installer'})
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")

    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    use("hrsh7th/nvim-cmp")
    use("hrsh7th/vim-vsnip")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

    use("rafamadriz/friendly-snippets")

    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    use {'nvim-telescope/telescope-ui-select.nvim' }
    use("glepnir/dashboard-nvim")
    use("ahmedkhalf/project.nvim")
    use 'glepnir/lspsaga.nvim'
    use {"akinsho/toggleterm.nvim"}


    use('simrat39/rust-tools.nvim')
    use('nvim-lua/plenary.nvim')
    use('mfussenegger/nvim-dap')
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)

pcall(
    vim.cmd,
    [[
      augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile>
      augroup end
    ]]
)
