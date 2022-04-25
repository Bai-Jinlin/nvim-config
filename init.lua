require('basic')
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
require('plugin-config.telescope')

require('lsp.setup')
require('lsp.cmp')
require('lsp.depui')
--require('lsp.lsp-saga')
require('neovide')


vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

