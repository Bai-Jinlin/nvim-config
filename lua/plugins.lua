require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('ellisonleao/gruvbox.nvim')
    use('shaunsingh/solarized.nvim')
    use({ 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' })
    use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
    use({ 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } })
    use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
    use('arkav/lualine-lsp-progress')

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use({ 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' })
    use('windwp/nvim-autopairs')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/vim-vsnip')
    use('hrsh7th/cmp-vsnip')
    use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
    use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
    use('hrsh7th/cmp-path') -- { name = 'path' }
    use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }

    use('rafamadriz/friendly-snippets')

    use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
    use({ 'nvim-telescope/telescope-ui-select.nvim' })
    use('glepnir/dashboard-nvim')
    use('ahmedkhalf/project.nvim')
    use({ 'akinsho/toggleterm.nvim' })

    use('simrat39/rust-tools.nvim')
    use('nvim-lua/plenary.nvim')
    use('mfussenegger/nvim-dap')
    use({ 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } })
    use('rmagatti/goto-preview')
    use('tami5/lspsaga.nvim')
    use({ 'folke/trouble.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
end)

--pcall(
--    vim.cmd,
--    [[
--      augroup packer_user_config
--      autocmd!
--      autocmd BufWritePost plugins.lua source <afile>
--      augroup end
--    ]]
--)
local utils = require('utils')
local gid = utils.augroup('packer_user_config', {})
utils.autocmd('BufWritePost', {
    pattern = 'plugins.lua',
    callback = function()
        vim.cmd([[ source  <afile> ]])
    end,
    group = gid,
})

--vim.api.nvim_create_augroup("packer_user_config")
