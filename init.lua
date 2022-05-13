require('basic')
local status, _ = pcall(require, 'packer')
if not status then
    vim.notify('plugins not installed')
    return
end

require('keybindings')
require('plugins')
require('plugin-config.nvim-tree')
require('plugin-config.bufferline')
require('plugin-config.nvim-treesitter')
require('plugin-config.lualine')
require('plugin-config.telescope')

require('plugin-config.ui-select')
require('plugin-config.project')
require('plugin-config.dashboard')
require('plugin-config.toggleterm')
require('plugin-config.autopairs')
require('plugin-config.goto-preview')
require('plugin-config.trouble')

require('lsp.setup')
require('lsp.cmp')
require('lsp.depui')
require('lsp.null-ls')
require('lsp.lspsaga')
require('neovide')

vim.opt.background = 'dark' -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
