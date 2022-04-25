 function on_attach(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require('keybindings').map_lsp(buf_set_keymap)
    require('keybindings').rust_map(buf_set_keymap);
    vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
end

local extension_path = vim.env.HOME ..'/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'


local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
        hover_actions={
            auto_focus=false,
        }
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                --checkOnSave = {
                --    command = "clippy"
                --},
            }
        }
    },
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path)
    }
}

require('rust-tools').setup(opts)

-- return {
--     on_setup=function (server)
--         require("rust-tools").setup {
--                 tools = { -- rust-tools options
--                     autoSetHints = true,
--                     hover_with_actions = true,
--                     inlay_hints = {
--                         show_parameter_hints = false,
--                         parameter_hints_prefix = "",
--                         other_hints_prefix = "",
--                     },
--                 },
--             -- The "server" property provided in rust-tools setup function are the
--             -- settings rust-tools will provide to lspconfig during init.            -- 
--             -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
--             -- with the user's own settings (opts).
--             server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
--         }
--         server:attach_buffers()
--         -- Only if standalone support is needed
--         --require('rust-tools.inlay_hints').set_inlay_hints()
--         require("rust-tools").start_standalone_if_required()
--     end
-- }
