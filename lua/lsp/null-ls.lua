local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
null_ls.setup({
    sources = {
        --formatting.stylua.with({
        --    extra_args = { '--config-path ' .. vim.env.HOME .. '/stylua.toml' },
        --}),
        formatting.stylua,
        formatting.rustfmt,
        formatting.prettier,
    },
    on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})
