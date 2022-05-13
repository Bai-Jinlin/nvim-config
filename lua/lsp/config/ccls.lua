local opts = {
    init_options = {
        --    cmd = {"/usr/bin/ccls"};
        compilationDatabaseDirectory = 'build',
        single_file_support = true,
        index = {
            threads = 0,
        },
        clang = {
            excludeArgs = { '-frounding-math' },
        },
    },
    on_attach = function(client, bufnr)

        local function buf_set_keymap(...)
            vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        require('keybindings').map_lsp(buf_set_keymap)
        vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end,
}
require('lspconfig').ccls.setup(opts)
