vim.g.nvim_tree_respect_buf_cwd = 1

require('project_nvim').setup({
    detection_methods = { 'lsp', 'pattern' },
    patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', '.sln' },
})

require('telescope').load_extension('projects')
