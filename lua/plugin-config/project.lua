local project_status, project = pcall(require, "project_nvim")
local telescope_status, telescope = pcall(require, "telescope")
if (not project_status) and (not telescope_status) then
    vim.notify("can't find project_nvim or telescope")
  return
end

vim.g.nvim_tree_respect_buf_cwd = 1

project.setup({
  detection_methods = {"lsp","pattern" },
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
})

telescope.load_extension("projects")
