local M = {}
M.map = vim.api.nvim_set_keymap
M.autocmd = vim.api.nvim_create_autocmd
M.augroup = vim.api.nvim_create_augroup
return M
