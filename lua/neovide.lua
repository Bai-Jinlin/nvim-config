if not vim.g.neovide then
    return
end
vim.go.guifont = 'Fira Code:h12'
vim.g.neovide_remember_window_size = true
-- vim.env.PATH="/home/lin/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin"..":"..vim.env.PATH
vim.env.ALL_PROXY = 'http://localhost:8118'
local utils = require('utils')
local opt = { noremap = true, silent = true }
utils.map('v', '<A-y>', '"+y', opt)
utils.map('n', '<A-p>', '"*p', opt)
